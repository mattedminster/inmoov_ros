// Generated by gencpp from file image_recognition_msgs/AnnotateRequest.msg
// DO NOT EDIT!


#ifndef IMAGE_RECOGNITION_MSGS_MESSAGE_ANNOTATEREQUEST_H
#define IMAGE_RECOGNITION_MSGS_MESSAGE_ANNOTATEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Image.h>
#include <image_recognition_msgs/Annotation.h>

namespace image_recognition_msgs
{
template <class ContainerAllocator>
struct AnnotateRequest_
{
  typedef AnnotateRequest_<ContainerAllocator> Type;

  AnnotateRequest_()
    : image()
    , annotations()  {
    }
  AnnotateRequest_(const ContainerAllocator& _alloc)
    : image(_alloc)
    , annotations(_alloc)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _image_type;
  _image_type image;

   typedef std::vector< ::image_recognition_msgs::Annotation_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::image_recognition_msgs::Annotation_<ContainerAllocator> >::other >  _annotations_type;
  _annotations_type annotations;




  typedef boost::shared_ptr< ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AnnotateRequest_

typedef ::image_recognition_msgs::AnnotateRequest_<std::allocator<void> > AnnotateRequest;

typedef boost::shared_ptr< ::image_recognition_msgs::AnnotateRequest > AnnotateRequestPtr;
typedef boost::shared_ptr< ::image_recognition_msgs::AnnotateRequest const> AnnotateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace image_recognition_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'image_recognition_msgs': ['/home/robot/inmoov_ros/src/image_recognition/image_recognition_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8cc91912a5e6a23decc502ffc5dae050";
  }

  static const char* value(const ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8cc91912a5e6a23dULL;
  static const uint64_t static_value2 = 0xecc502ffc5dae050ULL;
};

template<class ContainerAllocator>
struct DataType< ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "image_recognition_msgs/AnnotateRequest";
  }

  static const char* value(const ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
sensor_msgs/Image image\n\
Annotation[] annotations\n\
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
MSG: image_recognition_msgs/Annotation\n\
# This message describes an annotation (label) of a specific ROI (roi)\n\
string label\n\
sensor_msgs/RegionOfInterest roi\n\
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
";
  }

  static const char* value(const ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.image);
      stream.next(m.annotations);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AnnotateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::image_recognition_msgs::AnnotateRequest_<ContainerAllocator>& v)
  {
    s << indent << "image: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.image);
    s << indent << "annotations[]" << std::endl;
    for (size_t i = 0; i < v.annotations.size(); ++i)
    {
      s << indent << "  annotations[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::image_recognition_msgs::Annotation_<ContainerAllocator> >::stream(s, indent + "    ", v.annotations[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMAGE_RECOGNITION_MSGS_MESSAGE_ANNOTATEREQUEST_H