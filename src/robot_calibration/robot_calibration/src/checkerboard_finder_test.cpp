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
#include <string>       // std::string
#include <iostream>     // std::cout
#include <sstream>
#include <ros/ros.h>

// We use a number of PC2 iterators, define the indexes here
const unsigned X = 0;
const unsigned Y = 1;
const unsigned Z = 2;


int main(int argc, char **argv)
{
  // Setup Scriber
  ros::init(argc, argv, "talker");
  ros::NodeHandle nh;

  std::string topic_name;
  nh.param<std::string>("topic", topic_name, "/points");


 

  while (ros::ok())
    {
    // Find checkerboard
    std::vector<cv::Point2f> points;
    points.resize(8 * 6);
    cv::Size checkerboard_size(8, 6);
    int found = cv::findChessboardCorners(bridge->image, checkerboard_size,
                                          points, CV_CALIB_CB_ADAPTIVE_THRESH);
    std::stringstream ss;
    ss << found;
    //string test = ss.str();
    ROS_ERROR(ss.str().c_str());
    if (found)
    {
      ROS_INFO("Found the checkboard");
      
    }
    }
}