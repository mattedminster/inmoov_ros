// Generated by gencpp from file haf_grasping/ShowOnlyBestGraspRequest.msg
// DO NOT EDIT!


#ifndef HAF_GRASPING_MESSAGE_SHOWONLYBESTGRASPREQUEST_H
#define HAF_GRASPING_MESSAGE_SHOWONLYBESTGRASPREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace haf_grasping
{
template <class ContainerAllocator>
struct ShowOnlyBestGraspRequest_
{
  typedef ShowOnlyBestGraspRequest_<ContainerAllocator> Type;

  ShowOnlyBestGraspRequest_()
    : show_only_best_grasp(false)  {
    }
  ShowOnlyBestGraspRequest_(const ContainerAllocator& _alloc)
    : show_only_best_grasp(false)  {
  (void)_alloc;
    }



   typedef uint8_t _show_only_best_grasp_type;
  _show_only_best_grasp_type show_only_best_grasp;




  typedef boost::shared_ptr< ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ShowOnlyBestGraspRequest_

typedef ::haf_grasping::ShowOnlyBestGraspRequest_<std::allocator<void> > ShowOnlyBestGraspRequest;

typedef boost::shared_ptr< ::haf_grasping::ShowOnlyBestGraspRequest > ShowOnlyBestGraspRequestPtr;
typedef boost::shared_ptr< ::haf_grasping::ShowOnlyBestGraspRequest const> ShowOnlyBestGraspRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace haf_grasping

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg'], 'actionlib': ['/opt/ros/kinetic/share/actionlib/cmake/../msg'], 'haf_grasping': ['/home/robot/inmoov_ros/src/haf_grasping/msg', '/home/robot/inmoov_ros/devel/share/haf_grasping/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2884e314840573d98e3fd64b18c919d8";
  }

  static const char* value(const ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2884e314840573d9ULL;
  static const uint64_t static_value2 = 0x8e3fd64b18c919d8ULL;
};

template<class ContainerAllocator>
struct DataType< ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "haf_grasping/ShowOnlyBestGraspRequest";
  }

  static const char* value(const ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool show_only_best_grasp\n\
";
  }

  static const char* value(const ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.show_only_best_grasp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ShowOnlyBestGraspRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::haf_grasping::ShowOnlyBestGraspRequest_<ContainerAllocator>& v)
  {
    s << indent << "show_only_best_grasp: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.show_only_best_grasp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HAF_GRASPING_MESSAGE_SHOWONLYBESTGRASPREQUEST_H
