// Generated by gencpp from file haf_grasping/CalcGraspPointsServerResult.msg
// DO NOT EDIT!


#ifndef HAF_GRASPING_MESSAGE_CALCGRASPPOINTSSERVERRESULT_H
#define HAF_GRASPING_MESSAGE_CALCGRASPPOINTSSERVERRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <haf_grasping/GraspOutput.h>

namespace haf_grasping
{
template <class ContainerAllocator>
struct CalcGraspPointsServerResult_
{
  typedef CalcGraspPointsServerResult_<ContainerAllocator> Type;

  CalcGraspPointsServerResult_()
    : graspOutput()  {
    }
  CalcGraspPointsServerResult_(const ContainerAllocator& _alloc)
    : graspOutput(_alloc)  {
  (void)_alloc;
    }



   typedef  ::haf_grasping::GraspOutput_<ContainerAllocator>  _graspOutput_type;
  _graspOutput_type graspOutput;




  typedef boost::shared_ptr< ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator> const> ConstPtr;

}; // struct CalcGraspPointsServerResult_

typedef ::haf_grasping::CalcGraspPointsServerResult_<std::allocator<void> > CalcGraspPointsServerResult;

typedef boost::shared_ptr< ::haf_grasping::CalcGraspPointsServerResult > CalcGraspPointsServerResultPtr;
typedef boost::shared_ptr< ::haf_grasping::CalcGraspPointsServerResult const> CalcGraspPointsServerResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace haf_grasping

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg'], 'actionlib': ['/opt/ros/kinetic/share/actionlib/cmake/../msg'], 'haf_grasping': ['/home/robot/inmoov_ros/src/haf_grasping/msg', '/home/robot/inmoov_ros/devel/share/haf_grasping/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4d60c1e64258adfc60c950e0e4e2bab1";
  }

  static const char* value(const ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4d60c1e64258adfcULL;
  static const uint64_t static_value2 = 0x60c950e0e4e2bab1ULL;
};

template<class ContainerAllocator>
struct DataType< ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "haf_grasping/CalcGraspPointsServerResult";
  }

  static const char* value(const ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Define the result, if succeeded: defines grasp for gripper\n\
haf_grasping/GraspOutput graspOutput\n\
\n\
================================================================================\n\
MSG: haf_grasping/GraspOutput\n\
Header header\n\
int32 eval\n\
geometry_msgs/Point graspPoint1\n\
geometry_msgs/Point graspPoint2\n\
geometry_msgs/Point averagedGraspPoint\n\
geometry_msgs/Vector3 approachVector\n\
float32 roll # radians\n\
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
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.graspOutput);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CalcGraspPointsServerResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::haf_grasping::CalcGraspPointsServerResult_<ContainerAllocator>& v)
  {
    s << indent << "graspOutput: ";
    s << std::endl;
    Printer< ::haf_grasping::GraspOutput_<ContainerAllocator> >::stream(s, indent + "  ", v.graspOutput);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HAF_GRASPING_MESSAGE_CALCGRASPPOINTSSERVERRESULT_H