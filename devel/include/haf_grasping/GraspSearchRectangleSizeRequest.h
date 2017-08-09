// Generated by gencpp from file haf_grasping/GraspSearchRectangleSizeRequest.msg
// DO NOT EDIT!


#ifndef HAF_GRASPING_MESSAGE_GRASPSEARCHRECTANGLESIZEREQUEST_H
#define HAF_GRASPING_MESSAGE_GRASPSEARCHRECTANGLESIZEREQUEST_H


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
struct GraspSearchRectangleSizeRequest_
{
  typedef GraspSearchRectangleSizeRequest_<ContainerAllocator> Type;

  GraspSearchRectangleSizeRequest_()
    : grasp_search_size_x(0)
    , grasp_search_size_y(0)  {
    }
  GraspSearchRectangleSizeRequest_(const ContainerAllocator& _alloc)
    : grasp_search_size_x(0)
    , grasp_search_size_y(0)  {
  (void)_alloc;
    }



   typedef int32_t _grasp_search_size_x_type;
  _grasp_search_size_x_type grasp_search_size_x;

   typedef int32_t _grasp_search_size_y_type;
  _grasp_search_size_y_type grasp_search_size_y;




  typedef boost::shared_ptr< ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GraspSearchRectangleSizeRequest_

typedef ::haf_grasping::GraspSearchRectangleSizeRequest_<std::allocator<void> > GraspSearchRectangleSizeRequest;

typedef boost::shared_ptr< ::haf_grasping::GraspSearchRectangleSizeRequest > GraspSearchRectangleSizeRequestPtr;
typedef boost::shared_ptr< ::haf_grasping::GraspSearchRectangleSizeRequest const> GraspSearchRectangleSizeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5e9aa228a0f1d0fd7362424bd5a57ae8";
  }

  static const char* value(const ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5e9aa228a0f1d0fdULL;
  static const uint64_t static_value2 = 0x7362424bd5a57ae8ULL;
};

template<class ContainerAllocator>
struct DataType< ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "haf_grasping/GraspSearchRectangleSizeRequest";
  }

  static const char* value(const ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 grasp_search_size_x\n\
int32 grasp_search_size_y\n\
";
  }

  static const char* value(const ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.grasp_search_size_x);
      stream.next(m.grasp_search_size_y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GraspSearchRectangleSizeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::haf_grasping::GraspSearchRectangleSizeRequest_<ContainerAllocator>& v)
  {
    s << indent << "grasp_search_size_x: ";
    Printer<int32_t>::stream(s, indent + "  ", v.grasp_search_size_x);
    s << indent << "grasp_search_size_y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.grasp_search_size_y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HAF_GRASPING_MESSAGE_GRASPSEARCHRECTANGLESIZEREQUEST_H