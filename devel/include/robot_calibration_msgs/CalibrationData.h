// Generated by gencpp from file robot_calibration_msgs/CalibrationData.msg
// DO NOT EDIT!


#ifndef ROBOT_CALIBRATION_MSGS_MESSAGE_CALIBRATIONDATA_H
#define ROBOT_CALIBRATION_MSGS_MESSAGE_CALIBRATIONDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/JointState.h>
#include <robot_calibration_msgs/Observation.h>

namespace robot_calibration_msgs
{
template <class ContainerAllocator>
struct CalibrationData_
{
  typedef CalibrationData_<ContainerAllocator> Type;

  CalibrationData_()
    : joint_states()
    , observations()  {
    }
  CalibrationData_(const ContainerAllocator& _alloc)
    : joint_states(_alloc)
    , observations(_alloc)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::JointState_<ContainerAllocator>  _joint_states_type;
  _joint_states_type joint_states;

   typedef std::vector< ::robot_calibration_msgs::Observation_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::robot_calibration_msgs::Observation_<ContainerAllocator> >::other >  _observations_type;
  _observations_type observations;




  typedef boost::shared_ptr< ::robot_calibration_msgs::CalibrationData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_calibration_msgs::CalibrationData_<ContainerAllocator> const> ConstPtr;

}; // struct CalibrationData_

typedef ::robot_calibration_msgs::CalibrationData_<std::allocator<void> > CalibrationData;

typedef boost::shared_ptr< ::robot_calibration_msgs::CalibrationData > CalibrationDataPtr;
typedef boost::shared_ptr< ::robot_calibration_msgs::CalibrationData const> CalibrationDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_calibration_msgs::CalibrationData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_calibration_msgs::CalibrationData_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robot_calibration_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'robot_calibration_msgs': ['/home/robot/inmoov_ros/devel/share/robot_calibration_msgs/msg', '/home/robot/inmoov_ros/src/robot_calibration/robot_calibration_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robot_calibration_msgs::CalibrationData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_calibration_msgs::CalibrationData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_calibration_msgs::CalibrationData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_calibration_msgs::CalibrationData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_calibration_msgs::CalibrationData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_calibration_msgs::CalibrationData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_calibration_msgs::CalibrationData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a9a1a8b53ea9e13de6dae25608004191";
  }

  static const char* value(const ::robot_calibration_msgs::CalibrationData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa9a1a8b53ea9e13dULL;
  static const uint64_t static_value2 = 0xe6dae25608004191ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_calibration_msgs::CalibrationData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_calibration_msgs/CalibrationData";
  }

  static const char* value(const ::robot_calibration_msgs::CalibrationData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_calibration_msgs::CalibrationData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# State of the robot when this data was collected\n\
sensor_msgs/JointState  joint_states\n\
\n\
# Observations, one entry per sensor that is collecting data\n\
Observation[]           observations\n\
\n\
================================================================================\n\
MSG: sensor_msgs/JointState\n\
# This is a message that holds data to describe the state of a set of torque controlled joints. \n\
#\n\
# The state of each joint (revolute or prismatic) is defined by:\n\
#  * the position of the joint (rad or m),\n\
#  * the velocity of the joint (rad/s or m/s) and \n\
#  * the effort that is applied in the joint (Nm or N).\n\
#\n\
# Each joint is uniquely identified by its name\n\
# The header specifies the time at which the joint states were recorded. All the joint states\n\
# in one message have to be recorded at the same time.\n\
#\n\
# This message consists of a multiple arrays, one for each part of the joint state. \n\
# The goal is to make each of the fields optional. When e.g. your joints have no\n\
# effort associated with them, you can leave the effort array empty. \n\
#\n\
# All arrays in this message should have the same size, or be empty.\n\
# This is the only way to uniquely associate the joint name with the correct\n\
# states.\n\
\n\
\n\
Header header\n\
\n\
string[] name\n\
float64[] position\n\
float64[] velocity\n\
float64[] effort\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: robot_calibration_msgs/Observation\n\
# Name of the \"sensor\" that generate this data.\n\
string sensor_name\n\
\n\
# Features \"detected\" by the sensor.\n\
geometry_msgs/PointStamped[] features\n\
\n\
# Sensor information\n\
ExtendedCameraInfo ext_camera_info\n\
\n\
# Debugging data (optional)\n\
sensor_msgs/PointCloud2 cloud\n\
sensor_msgs/Image image\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PointStamped\n\
# This represents a Point with reference coordinate frame and timestamp\n\
Header header\n\
Point point\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: robot_calibration_msgs/ExtendedCameraInfo\n\
sensor_msgs/CameraInfo  camera_info\n\
CameraParameter[]       parameters\n\
\n\
================================================================================\n\
MSG: sensor_msgs/CameraInfo\n\
# This message defines meta information for a camera. It should be in a\n\
# camera namespace on topic \"camera_info\" and accompanied by up to five\n\
# image topics named:\n\
#\n\
#   image_raw - raw data from the camera driver, possibly Bayer encoded\n\
#   image            - monochrome, distorted\n\
#   image_color      - color, distorted\n\
#   image_rect       - monochrome, rectified\n\
#   image_rect_color - color, rectified\n\
#\n\
# The image_pipeline contains packages (image_proc, stereo_image_proc)\n\
# for producing the four processed image topics from image_raw and\n\
# camera_info. The meaning of the camera parameters are described in\n\
# detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.\n\
#\n\
# The image_geometry package provides a user-friendly interface to\n\
# common operations using this meta information. If you want to, e.g.,\n\
# project a 3d point into image coordinates, we strongly recommend\n\
# using image_geometry.\n\
#\n\
# If the camera is uncalibrated, the matrices D, K, R, P should be left\n\
# zeroed out. In particular, clients may assume that K[0] == 0.0\n\
# indicates an uncalibrated camera.\n\
\n\
#######################################################################\n\
#                     Image acquisition info                          #\n\
#######################################################################\n\
\n\
# Time of image acquisition, camera coordinate frame ID\n\
Header header    # Header timestamp should be acquisition time of image\n\
                 # Header frame_id should be optical frame of camera\n\
                 # origin of frame should be optical center of camera\n\
                 # +x should point to the right in the image\n\
                 # +y should point down in the image\n\
                 # +z should point into the plane of the image\n\
\n\
\n\
#######################################################################\n\
#                      Calibration Parameters                         #\n\
#######################################################################\n\
# These are fixed during camera calibration. Their values will be the #\n\
# same in all messages until the camera is recalibrated. Note that    #\n\
# self-calibrating systems may \"recalibrate\" frequently.              #\n\
#                                                                     #\n\
# The internal parameters can be used to warp a raw (distorted) image #\n\
# to:                                                                 #\n\
#   1. An undistorted image (requires D and K)                        #\n\
#   2. A rectified image (requires D, K, R)                           #\n\
# The projection matrix P projects 3D points into the rectified image.#\n\
#######################################################################\n\
\n\
# The image dimensions with which the camera was calibrated. Normally\n\
# this will be the full camera resolution in pixels.\n\
uint32 height\n\
uint32 width\n\
\n\
# The distortion model used. Supported models are listed in\n\
# sensor_msgs/distortion_models.h. For most cameras, \"plumb_bob\" - a\n\
# simple model of radial and tangential distortion - is sufficient.\n\
string distortion_model\n\
\n\
# The distortion parameters, size depending on the distortion model.\n\
# For \"plumb_bob\", the 5 parameters are: (k1, k2, t1, t2, k3).\n\
float64[] D\n\
\n\
# Intrinsic camera matrix for the raw (distorted) images.\n\
#     [fx  0 cx]\n\
# K = [ 0 fy cy]\n\
#     [ 0  0  1]\n\
# Projects 3D points in the camera coordinate frame to 2D pixel\n\
# coordinates using the focal lengths (fx, fy) and principal point\n\
# (cx, cy).\n\
float64[9]  K # 3x3 row-major matrix\n\
\n\
# Rectification matrix (stereo cameras only)\n\
# A rotation matrix aligning the camera coordinate system to the ideal\n\
# stereo image plane so that epipolar lines in both stereo images are\n\
# parallel.\n\
float64[9]  R # 3x3 row-major matrix\n\
\n\
# Projection/camera matrix\n\
#     [fx'  0  cx' Tx]\n\
# P = [ 0  fy' cy' Ty]\n\
#     [ 0   0   1   0]\n\
# By convention, this matrix specifies the intrinsic (camera) matrix\n\
#  of the processed (rectified) image. That is, the left 3x3 portion\n\
#  is the normal camera intrinsic matrix for the rectified image.\n\
# It projects 3D points in the camera coordinate frame to 2D pixel\n\
#  coordinates using the focal lengths (fx', fy') and principal point\n\
#  (cx', cy') - these may differ from the values in K.\n\
# For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will\n\
#  also have R = the identity and P[1:3,1:3] = K.\n\
# For a stereo pair, the fourth column [Tx Ty 0]' is related to the\n\
#  position of the optical center of the second camera in the first\n\
#  camera's frame. We assume Tz = 0 so both cameras are in the same\n\
#  stereo image plane. The first camera always has Tx = Ty = 0. For\n\
#  the right (second) camera of a horizontal stereo pair, Ty = 0 and\n\
#  Tx = -fx' * B, where B is the baseline between the cameras.\n\
# Given a 3D point [X Y Z]', the projection (x, y) of the point onto\n\
#  the rectified image is given by:\n\
#  [u v w]' = P * [X Y Z 1]'\n\
#         x = u / w\n\
#         y = v / w\n\
#  This holds for both images of a stereo pair.\n\
float64[12] P # 3x4 row-major matrix\n\
\n\
\n\
#######################################################################\n\
#                      Operational Parameters                         #\n\
#######################################################################\n\
# These define the image region actually captured by the camera       #\n\
# driver. Although they affect the geometry of the output image, they #\n\
# may be changed freely without recalibrating the camera.             #\n\
#######################################################################\n\
\n\
# Binning refers here to any camera setting which combines rectangular\n\
#  neighborhoods of pixels into larger \"super-pixels.\" It reduces the\n\
#  resolution of the output image to\n\
#  (width / binning_x) x (height / binning_y).\n\
# The default values binning_x = binning_y = 0 is considered the same\n\
#  as binning_x = binning_y = 1 (no subsampling).\n\
uint32 binning_x\n\
uint32 binning_y\n\
\n\
# Region of interest (subwindow of full camera resolution), given in\n\
#  full resolution (unbinned) image coordinates. A particular ROI\n\
#  always denotes the same window of pixels on the camera sensor,\n\
#  regardless of binning settings.\n\
# The default setting of roi (all values 0) is considered the same as\n\
#  full resolution (roi.width = width, roi.height = height).\n\
RegionOfInterest roi\n\
\n\
================================================================================\n\
MSG: sensor_msgs/RegionOfInterest\n\
# This message is used to specify a region of interest within an image.\n\
#\n\
# When used to specify the ROI setting of the camera when the image was\n\
# taken, the height and width fields should either match the height and\n\
# width fields for the associated image; or height = width = 0\n\
# indicates that the full resolution image was captured.\n\
\n\
uint32 x_offset  # Leftmost pixel of the ROI\n\
                 # (0 if the ROI includes the left edge of the image)\n\
uint32 y_offset  # Topmost pixel of the ROI\n\
                 # (0 if the ROI includes the top edge of the image)\n\
uint32 height    # Height of ROI\n\
uint32 width     # Width of ROI\n\
\n\
# True if a distinct rectified ROI should be calculated from the \"raw\"\n\
# ROI in this message. Typically this should be False if the full image\n\
# is captured (ROI not used), and True if a subwindow is captured (ROI\n\
# used).\n\
bool do_rectify\n\
\n\
================================================================================\n\
MSG: robot_calibration_msgs/CameraParameter\n\
string name\n\
float64 value\n\
\n\
================================================================================\n\
MSG: sensor_msgs/PointCloud2\n\
# This message holds a collection of N-dimensional points, which may\n\
# contain additional information such as normals, intensity, etc. The\n\
# point data is stored as a binary blob, its layout described by the\n\
# contents of the \"fields\" array.\n\
\n\
# The point cloud data may be organized 2d (image-like) or 1d\n\
# (unordered). Point clouds organized as 2d images may be produced by\n\
# camera depth sensors such as stereo or time-of-flight.\n\
\n\
# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n\
# points).\n\
Header header\n\
\n\
# 2D structure of the point cloud. If the cloud is unordered, height is\n\
# 1 and width is the length of the point cloud.\n\
uint32 height\n\
uint32 width\n\
\n\
# Describes the channels and their layout in the binary data blob.\n\
PointField[] fields\n\
\n\
bool    is_bigendian # Is this data bigendian?\n\
uint32  point_step   # Length of a point in bytes\n\
uint32  row_step     # Length of a row in bytes\n\
uint8[] data         # Actual point data, size is (row_step*height)\n\
\n\
bool is_dense        # True if there are no invalid points\n\
\n\
================================================================================\n\
MSG: sensor_msgs/PointField\n\
# This message holds the description of one point entry in the\n\
# PointCloud2 message format.\n\
uint8 INT8    = 1\n\
uint8 UINT8   = 2\n\
uint8 INT16   = 3\n\
uint8 UINT16  = 4\n\
uint8 INT32   = 5\n\
uint8 UINT32  = 6\n\
uint8 FLOAT32 = 7\n\
uint8 FLOAT64 = 8\n\
\n\
string name      # Name of field\n\
uint32 offset    # Offset from start of point struct\n\
uint8  datatype  # Datatype enumeration, see above\n\
uint32 count     # How many elements in the field\n\
\n\
================================================================================\n\
MSG: sensor_msgs/Image\n\
# This message contains an uncompressed image\n\
# (0, 0) is at top-left corner of image\n\
#\n\
\n\
Header header        # Header timestamp should be acquisition time of image\n\
                     # Header frame_id should be optical frame of camera\n\
                     # origin of frame should be optical center of cameara\n\
                     # +x should point to the right in the image\n\
                     # +y should point down in the image\n\
                     # +z should point into to plane of the image\n\
                     # If the frame_id here and the frame_id of the CameraInfo\n\
                     # message associated with the image conflict\n\
                     # the behavior is undefined\n\
\n\
uint32 height         # image height, that is, number of rows\n\
uint32 width          # image width, that is, number of columns\n\
\n\
# The legal values for encoding are in file src/image_encodings.cpp\n\
# If you want to standardize a new string format, join\n\
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n\
\n\
string encoding       # Encoding of pixels -- channel meaning, ordering, size\n\
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n\
\n\
uint8 is_bigendian    # is this data bigendian?\n\
uint32 step           # Full row length in bytes\n\
uint8[] data          # actual matrix data, size is (step * rows)\n\
";
  }

  static const char* value(const ::robot_calibration_msgs::CalibrationData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_calibration_msgs::CalibrationData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_states);
      stream.next(m.observations);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CalibrationData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_calibration_msgs::CalibrationData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_calibration_msgs::CalibrationData_<ContainerAllocator>& v)
  {
    s << indent << "joint_states: ";
    s << std::endl;
    Printer< ::sensor_msgs::JointState_<ContainerAllocator> >::stream(s, indent + "  ", v.joint_states);
    s << indent << "observations[]" << std::endl;
    for (size_t i = 0; i < v.observations.size(); ++i)
    {
      s << indent << "  observations[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::robot_calibration_msgs::Observation_<ContainerAllocator> >::stream(s, indent + "    ", v.observations[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_CALIBRATION_MSGS_MESSAGE_CALIBRATIONDATA_H
