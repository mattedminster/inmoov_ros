// Generated by gencpp from file robot_calibration_msgs/GripperLedCommandGoal.msg
// DO NOT EDIT!


#ifndef ROBOT_CALIBRATION_MSGS_MESSAGE_GRIPPERLEDCOMMANDGOAL_H
#define ROBOT_CALIBRATION_MSGS_MESSAGE_GRIPPERLEDCOMMANDGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_calibration_msgs
{
template <class ContainerAllocator>
struct GripperLedCommandGoal_
{
  typedef GripperLedCommandGoal_<ContainerAllocator> Type;

  GripperLedCommandGoal_()
    : led_code(0)  {
    }
  GripperLedCommandGoal_(const ContainerAllocator& _alloc)
    : led_code(0)  {
  (void)_alloc;
    }



   typedef uint8_t _led_code_type;
  _led_code_type led_code;




  typedef boost::shared_ptr< ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator> const> ConstPtr;

}; // struct GripperLedCommandGoal_

typedef ::robot_calibration_msgs::GripperLedCommandGoal_<std::allocator<void> > GripperLedCommandGoal;

typedef boost::shared_ptr< ::robot_calibration_msgs::GripperLedCommandGoal > GripperLedCommandGoalPtr;
typedef boost::shared_ptr< ::robot_calibration_msgs::GripperLedCommandGoal const> GripperLedCommandGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robot_calibration_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'robot_calibration_msgs': ['/home/robot/inmoov_ros/devel/share/robot_calibration_msgs/msg', '/home/robot/inmoov_ros/src/robot_calibration/robot_calibration_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "11513917910062a2ca72ae2699b68556";
  }

  static const char* value(const ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x11513917910062a2ULL;
  static const uint64_t static_value2 = 0xca72ae2699b68556ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_calibration_msgs/GripperLedCommandGoal";
  }

  static const char* value(const ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# This action is used to flash a sequence with LEDs, which can then be detected by calibration\n\
\n\
uint8 led_code\n\
\n\
";
  }

  static const char* value(const ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.led_code);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GripperLedCommandGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_calibration_msgs::GripperLedCommandGoal_<ContainerAllocator>& v)
  {
    s << indent << "led_code: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.led_code);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_CALIBRATION_MSGS_MESSAGE_GRIPPERLEDCOMMANDGOAL_H
