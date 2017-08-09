// Generated by gencpp from file moveit_msgs/GetPlannerParamsResponse.msg
// DO NOT EDIT!


#ifndef MOVEIT_MSGS_MESSAGE_GETPLANNERPARAMSRESPONSE_H
#define MOVEIT_MSGS_MESSAGE_GETPLANNERPARAMSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <moveit_msgs/PlannerParams.h>

namespace moveit_msgs
{
template <class ContainerAllocator>
struct GetPlannerParamsResponse_
{
  typedef GetPlannerParamsResponse_<ContainerAllocator> Type;

  GetPlannerParamsResponse_()
    : params()  {
    }
  GetPlannerParamsResponse_(const ContainerAllocator& _alloc)
    : params(_alloc)  {
  (void)_alloc;
    }



   typedef  ::moveit_msgs::PlannerParams_<ContainerAllocator>  _params_type;
  _params_type params;




  typedef boost::shared_ptr< ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetPlannerParamsResponse_

typedef ::moveit_msgs::GetPlannerParamsResponse_<std::allocator<void> > GetPlannerParamsResponse;

typedef boost::shared_ptr< ::moveit_msgs::GetPlannerParamsResponse > GetPlannerParamsResponsePtr;
typedef boost::shared_ptr< ::moveit_msgs::GetPlannerParamsResponse const> GetPlannerParamsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace moveit_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'shape_msgs': ['/opt/ros/kinetic/share/shape_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'moveit_msgs': ['/home/robot/inmoov_ros/devel/share/moveit_msgs/msg', '/home/robot/inmoov_ros/src/moveit_msgs/msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'object_recognition_msgs': ['/home/robot/inmoov_ros/devel/share/object_recognition_msgs/msg', '/home/robot/inmoov_ros/src/object_recognition_msgs/msg'], 'octomap_msgs': ['/opt/ros/kinetic/share/octomap_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "462b1bd59976ece800f6a48f2b0bf1a2";
  }

  static const char* value(const ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x462b1bd59976ece8ULL;
  static const uint64_t static_value2 = 0x00f6a48f2b0bf1a2ULL;
};

template<class ContainerAllocator>
struct DataType< ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moveit_msgs/GetPlannerParamsResponse";
  }

  static const char* value(const ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
PlannerParams params\n\
\n\
\n\
================================================================================\n\
MSG: moveit_msgs/PlannerParams\n\
# parameter names (same size as values)\n\
string[] keys\n\
\n\
# parameter values (same size as keys)\n\
string[] values\n\
\n\
# parameter description (can be empty)\n\
string[] descriptions\n\
";
  }

  static const char* value(const ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.params);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPlannerParamsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moveit_msgs::GetPlannerParamsResponse_<ContainerAllocator>& v)
  {
    s << indent << "params: ";
    s << std::endl;
    Printer< ::moveit_msgs::PlannerParams_<ContainerAllocator> >::stream(s, indent + "  ", v.params);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVEIT_MSGS_MESSAGE_GETPLANNERPARAMSRESPONSE_H
