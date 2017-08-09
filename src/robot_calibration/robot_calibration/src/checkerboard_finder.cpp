/*
 * Copyright (C) 2015 Fetch Robotics Inc.
 * Copyright (C) 2013-2014 Unbounded Robotics Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// Author: Michael Ferguson

#include <robot_calibration/capture/checkerboard_finder.h>
#include <sensor_msgs/point_cloud2_iterator.h>
#include <sensor_msgs/Image.h>
#include <string>       // std::string
#include <iostream>     // std::cout
#include <sstream>
#include <image_transport/image_transport.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

using namespace cv;

namespace robot_calibration
{

// We use a number of PC2 iterators, define the indexes here
const unsigned X = 0;
const unsigned Y = 1;
const unsigned Z = 2;
static const std::string OPENCV_WINDOW = "Image window";

image_transport::Publisher image_pub_; 


CheckerboardFinder::CheckerboardFinder(ros::NodeHandle & nh) :
  FeatureFinder(nh),
  waiting_(false)
{

  image_transport::ImageTransport _it(nh);
  image_transport::Publisher _pub = _it.advertise("/image_converter/output_video", 1);
  // Setup Scriber
  std::string topic_name;
  nh.param<std::string>("topic", topic_name, "/points");
  subscriber_ = nh.subscribe(topic_name,
                             1,
                             &CheckerboardFinder::cameraCallback, this);

  // Size of checkerboard
  nh.param<int>("points_x", points_x_, 4);
  nh.param<int>("points_y", points_y_, 3);
  nh.param<double>("size", square_size_, 0.0254);

  // Should we output debug image/cloud
  nh.param<bool>("debug", output_debug_, true);

  // Get sensor names
  nh.param<std::string>("camera_sensor_name", camera_sensor_name_, "camera");
  nh.param<std::string>("chain_sensor_name", chain_sensor_name_, "arm");

  // Publish where checkerboard points were seen
  publisher_ = nh.advertise<sensor_msgs::PointCloud2>("checkerboard_points", 10);

  // Setup to get camera depth info
  if (!depth_camera_manager_.init(nh))
  {
    // Error will be printed in manager
    throw;
  }
}

void CheckerboardFinder::cameraCallback(const sensor_msgs::PointCloud2& cloud)
{
  //ROS_ERROR("callback!");
  //waiting_ = true;
  if (waiting_)
  {
    ROS_ERROR("area-1");
    cloud_ = cloud;
    waiting_ = false;
  }
}

// Returns true if we got a message, false if we timeout
bool CheckerboardFinder::waitForCloud()
{
  // Initial wait cycle so that camera is definitely up to date.
  ros::Duration(1/10.0).sleep();

  waiting_ = true;
  int count = 250;
  while (--count)
  {
    if (!waiting_)
    {
      // success
      return true;
    }
    ros::Duration(0.01).sleep();
    ros::spinOnce();
  }
  ROS_ERROR("Failed to get cloud");
  return !waiting_;
}

bool CheckerboardFinder::find(robot_calibration_msgs::CalibrationData * msg)
{
  ROS_INFO("find");
  // Try up to 50 frames
  for (int i = 0; i < 50; ++i)
  {
    // temporary copy of msg, so we throw away all changes if findInternal() returns false
    robot_calibration_msgs::CalibrationData tmp_msg(*msg);
    if (findInternal(&tmp_msg))
    {
      *msg = tmp_msg;
      return true;
    }
  }
  return false;
}

bool CheckerboardFinder::findInternal(robot_calibration_msgs::CalibrationData * msg)
{
  geometry_msgs::PointStamped rgbd;
  geometry_msgs::PointStamped world;
  ROS_INFO("test!");
  // Get cloud
  if (!waitForCloud())
  {
    ROS_ERROR("No point cloud data");
    return false;
  }

  // Get an image message from point cloud
  sensor_msgs::ImagePtr image_msg(new sensor_msgs::Image);
  sensor_msgs::PointCloud2ConstIterator<uint8_t> rgb(cloud_, "rgb");
  image_msg->encoding = "bgr8";
  image_msg->height = cloud_.height;
  image_msg->width = cloud_.width;
  image_msg->step = image_msg->width * sizeof (uint8_t) * 3;
  image_msg->data.resize(image_msg->step * image_msg->height);
  for (size_t y = 0; y < cloud_.height; y++)
  {
    for (size_t x = 0; x < cloud_.width; x++)
    {
      uint8_t* pixel = &(image_msg->data[y * image_msg->step + x * 3]);
      pixel[0] = rgb[0];
      pixel[1] = rgb[1];
      pixel[2] = rgb[2];
      ++rgb;
    }
  }

  // Get an OpenCV image from the cloud
  cv_bridge::CvImagePtr bridge;
  try
  {
    bridge = cv_bridge::toCvCopy(image_msg, "mono8");  // TODO: was rgb8? does this work?
  }
  catch(cv_bridge::Exception& e)
  {
    ROS_ERROR("Conversion failed");
    return false;
  }

  image_pub_.publish(bridge->toImageMsg());
  //imshow(OPENCV_WINDOW, bridge->image);
  //waitKey(3);

  // Find checkerboard
  std::vector<cv::Point2f> points;
  points.resize(4* 3);
  //cv::Size checkerboard_size(points_x_, points_y_);
  Size patternsize(4,3); //number of centers
  int found = findChessboardCorners(bridge->image, patternsize, points, CV_CALIB_CB_ADAPTIVE_THRESH);

  std::stringstream ss;
  ss << found;
  //string test = ss.str();
  ROS_ERROR(ss.str().c_str());
  if (found)
  {
    ROS_INFO("Found the checkboard");

    // Create PointCloud2 to publish
    sensor_msgs::PointCloud2 cloud;
    cloud.width = 0;
    cloud.height = 0;
    cloud.header.stamp = ros::Time::now();
    cloud.header.frame_id = cloud_.header.frame_id;
    sensor_msgs::PointCloud2Modifier cloud_mod(cloud);
    cloud_mod.setPointCloud2FieldsByString(1, "xyz");
    cloud_mod.resize(points_x_ * points_y_);
    sensor_msgs::PointCloud2Iterator<float> iter_cloud(cloud_, "x");

    // Set msg size
    int idx_cam = msg->observations.size() + 0;
    int idx_chain = msg->observations.size() + 1;
    msg->observations.resize(msg->observations.size() + 2);
    msg->observations[idx_cam].sensor_name = camera_sensor_name_;
    msg->observations[idx_chain].sensor_name = chain_sensor_name_;
         
    msg->observations[idx_cam].features.resize(points_x_ * points_y_);
    msg->observations[idx_chain].features.resize(points_x_ * points_y_);


    // Fill in the headers
    rgbd.header = cloud_.header;
    world.header.frame_id = "checkerboard";

    // Fill in message
    sensor_msgs::PointCloud2ConstIterator<float> xyz(cloud_, "x");
    std::cout << "points size:";
    std::cout << points.size();
    ROS_INFO("Found the checkboard");
    for (size_t i = 0; i < points.size(); ++i)
    {
      //world.point.x = (i % points_x_) * square_size_;
      //world.point.y = (i / points_x_) * square_size_;
      world.point.z = (i % points_x_) * -square_size_;
      world.point.x = (i / points_x_) * -square_size_;

      // Get 3d point
      int index = (int)(points[i].y) * cloud_.width + (int)(points[i].x);
      rgbd.point.x = (xyz + index)[X];
      rgbd.point.y = (xyz + index)[Y];
      rgbd.point.z = (xyz + index)[Z];
      std::cout << "rgbd.point.x:";
      std::cout << rgbd.point.x;
      std::cout << std::endl;
      std::cout << "rgbd.point.y:";
      std::cout << rgbd.point.y;
      std::cout << std::endl;
      std::cout << "rgbd.point.z:";
      std::cout << rgbd.point.z;
      std::cout << std::endl;
      std::cout << std::endl;
      // Do not accept NANs
      if (isnan(rgbd.point.x) ||
          isnan(rgbd.point.y) ||
          isnan(rgbd.point.z))
      {
        ROS_ERROR_STREAM("NAN point on " << i);
        return false;
      }

      msg->observations[idx_cam].features[i] = rgbd;
      msg->observations[idx_cam].ext_camera_info = depth_camera_manager_.getDepthCameraInfo();
      msg->observations[idx_chain].features[i] = world;

      // Visualize
      iter_cloud[0] = 50;
      iter_cloud[1] = 100;
      iter_cloud[2] = 75;
      ++iter_cloud;
    }

    // Add debug cloud to message
    if (output_debug_)
    {
      msg->observations[idx_cam].cloud = cloud_;
    }

    // Publish results
    publisher_.publish(cloud);

    // Found all points
    return true;
  }
  ROS_ERROR("here!");
  return false;
}

}  // namespace robot_calibration
