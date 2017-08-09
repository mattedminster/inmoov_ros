// Generated by gencpp from file cob_object_detection_msgs/AcquireObjectImageFeedback.msg
// DO NOT EDIT!


#ifndef COB_OBJECT_DETECTION_MSGS_MESSAGE_ACQUIREOBJECTIMAGEFEEDBACK_H
#define COB_OBJECT_DETECTION_MSGS_MESSAGE_ACQUIREOBJECTIMAGEFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cob_object_detection_msgs
{
template <class ContainerAllocator>
struct AcquireObjectImageFeedback_
{
  typedef AcquireObjectImageFeedback_<ContainerAllocator> Type;

  AcquireObjectImageFeedback_()
    : percent_complete(0.0)  {
    }
  AcquireObjectImageFeedback_(const ContainerAllocator& _alloc)
    : percent_complete(0.0)  {
  (void)_alloc;
    }



   typedef float _percent_complete_type;
  _percent_complete_type percent_complete;




  typedef boost::shared_ptr< ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct AcquireObjectImageFeedback_

typedef ::cob_object_detection_msgs::AcquireObjectImageFeedback_<std::allocator<void> > AcquireObjectImageFeedback;

typedef boost::shared_ptr< ::cob_object_detection_msgs::AcquireObjectImageFeedback > AcquireObjectImageFeedbackPtr;
typedef boost::shared_ptr< ::cob_object_detection_msgs::AcquireObjectImageFeedback const> AcquireObjectImageFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cob_object_detection_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'cob_object_detection_msgs': ['/home/robot/inmoov_ros/devel/share/cob_object_detection_msgs/msg', '/home/robot/inmoov_ros/src/cob_perception_common/cob_object_detection_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d342375c60a5a58d3bc32664070a1368";
  }

  static const char* value(const ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd342375c60a5a58dULL;
  static const uint64_t static_value2 = 0x3bc32664070a1368ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cob_object_detection_msgs/AcquireObjectImageFeedback";
  }

  static const char* value(const ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# The feedback\n\
float32 percent_complete\n\
\n\
";
  }

  static const char* value(const ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.percent_complete);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AcquireObjectImageFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cob_object_detection_msgs::AcquireObjectImageFeedback_<ContainerAllocator>& v)
  {
    s << indent << "percent_complete: ";
    Printer<float>::stream(s, indent + "  ", v.percent_complete);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COB_OBJECT_DETECTION_MSGS_MESSAGE_ACQUIREOBJECTIMAGEFEEDBACK_H
