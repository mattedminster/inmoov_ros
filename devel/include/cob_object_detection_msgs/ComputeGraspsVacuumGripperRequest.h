// Generated by gencpp from file cob_object_detection_msgs/ComputeGraspsVacuumGripperRequest.msg
// DO NOT EDIT!


#ifndef COB_OBJECT_DETECTION_MSGS_MESSAGE_COMPUTEGRASPSVACUUMGRIPPERREQUEST_H
#define COB_OBJECT_DETECTION_MSGS_MESSAGE_COMPUTEGRASPSVACUUMGRIPPERREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <cob_object_detection_msgs/Detection.h>

namespace cob_object_detection_msgs
{
template <class ContainerAllocator>
struct ComputeGraspsVacuumGripperRequest_
{
  typedef ComputeGraspsVacuumGripperRequest_<ContainerAllocator> Type;

  ComputeGraspsVacuumGripperRequest_()
    : object()
    , external_reference_frame_id()  {
    }
  ComputeGraspsVacuumGripperRequest_(const ContainerAllocator& _alloc)
    : object(_alloc)
    , external_reference_frame_id(_alloc)  {
  (void)_alloc;
    }



   typedef  ::cob_object_detection_msgs::Detection_<ContainerAllocator>  _object_type;
  _object_type object;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _external_reference_frame_id_type;
  _external_reference_frame_id_type external_reference_frame_id;




  typedef boost::shared_ptr< ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ComputeGraspsVacuumGripperRequest_

typedef ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<std::allocator<void> > ComputeGraspsVacuumGripperRequest;

typedef boost::shared_ptr< ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest > ComputeGraspsVacuumGripperRequestPtr;
typedef boost::shared_ptr< ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest const> ComputeGraspsVacuumGripperRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cob_object_detection_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'cob_object_detection_msgs': ['/home/robot/inmoov_ros/devel/share/cob_object_detection_msgs/msg', '/home/robot/inmoov_ros/src/cob_perception_common/cob_object_detection_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cf22e5a7f83f0b75d5ad474571594809";
  }

  static const char* value(const ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcf22e5a7f83f0b75ULL;
  static const uint64_t static_value2 = 0xd5ad474571594809ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cob_object_detection_msgs/ComputeGraspsVacuumGripperRequest";
  }

  static const char* value(const ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
cob_object_detection_msgs/Detection object\n\
\n\
\n\
string external_reference_frame_id\n\
\n\
================================================================================\n\
MSG: cob_object_detection_msgs/Detection\n\
Header header\n\
string label\n\
int32 id\n\
string detector\n\
float32 score\n\
Mask mask\n\
geometry_msgs/PoseStamped pose\n\
geometry_msgs/Point bounding_box_lwh\n\
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
MSG: cob_object_detection_msgs/Mask\n\
# this message is used to mark where an object is present in an image\n\
# this can be done either by a roi region on the image (less precise) or a mask (more precise)\n\
\n\
Rect roi\n\
\n\
# in the case when mask is used, 'roi' specifies the image region and 'mask'\n\
# (which should be of the same size) a binary mask in that region\n\
sensor_msgs/Image mask\n\
\n\
# in the case there is 3D data available, 'indices' are used to index the \n\
# part of the point cloud representing the object\n\
#pcl/PointIndices indices\n\
\n\
================================================================================\n\
MSG: cob_object_detection_msgs/Rect\n\
int32 x\n\
int32 y\n\
int32 width\n\
int32 height\n\
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
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.object);
      stream.next(m.external_reference_frame_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ComputeGraspsVacuumGripperRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest_<ContainerAllocator>& v)
  {
    s << indent << "object: ";
    s << std::endl;
    Printer< ::cob_object_detection_msgs::Detection_<ContainerAllocator> >::stream(s, indent + "  ", v.object);
    s << indent << "external_reference_frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.external_reference_frame_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COB_OBJECT_DETECTION_MSGS_MESSAGE_COMPUTEGRASPSVACUUMGRIPPERREQUEST_H
