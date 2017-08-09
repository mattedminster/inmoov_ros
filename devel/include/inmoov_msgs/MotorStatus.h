// Generated by gencpp from file inmoov_msgs/MotorStatus.msg
// DO NOT EDIT!


#ifndef INMOOV_MSGS_MESSAGE_MOTORSTATUS_H
#define INMOOV_MSGS_MESSAGE_MOTORSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace inmoov_msgs
{
template <class ContainerAllocator>
struct MotorStatus_
{
  typedef MotorStatus_<ContainerAllocator> Type;

  MotorStatus_()
    : joint()
    , bus(0)
    , servoPin(0)
    , goal(0.0)
    , position(0.0)
    , smooth(0)
    , maxSpeed(0.0)
    , presentspeed(0.0)
    , moving(false)
    , posraw(0)
    , enabled(false)
    , power(false)
    , Debug1(0.0)
    , Debug2(0.0)
    , Debug3(0.0)  {
    }
  MotorStatus_(const ContainerAllocator& _alloc)
    : joint(_alloc)
    , bus(0)
    , servoPin(0)
    , goal(0.0)
    , position(0.0)
    , smooth(0)
    , maxSpeed(0.0)
    , presentspeed(0.0)
    , moving(false)
    , posraw(0)
    , enabled(false)
    , power(false)
    , Debug1(0.0)
    , Debug2(0.0)
    , Debug3(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _joint_type;
  _joint_type joint;

   typedef uint8_t _bus_type;
  _bus_type bus;

   typedef uint8_t _servoPin_type;
  _servoPin_type servoPin;

   typedef float _goal_type;
  _goal_type goal;

   typedef float _position_type;
  _position_type position;

   typedef uint8_t _smooth_type;
  _smooth_type smooth;

   typedef float _maxSpeed_type;
  _maxSpeed_type maxSpeed;

   typedef float _presentspeed_type;
  _presentspeed_type presentspeed;

   typedef uint8_t _moving_type;
  _moving_type moving;

   typedef uint16_t _posraw_type;
  _posraw_type posraw;

   typedef uint8_t _enabled_type;
  _enabled_type enabled;

   typedef uint8_t _power_type;
  _power_type power;

   typedef float _Debug1_type;
  _Debug1_type Debug1;

   typedef float _Debug2_type;
  _Debug2_type Debug2;

   typedef float _Debug3_type;
  _Debug3_type Debug3;




  typedef boost::shared_ptr< ::inmoov_msgs::MotorStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::inmoov_msgs::MotorStatus_<ContainerAllocator> const> ConstPtr;

}; // struct MotorStatus_

typedef ::inmoov_msgs::MotorStatus_<std::allocator<void> > MotorStatus;

typedef boost::shared_ptr< ::inmoov_msgs::MotorStatus > MotorStatusPtr;
typedef boost::shared_ptr< ::inmoov_msgs::MotorStatus const> MotorStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::inmoov_msgs::MotorStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::inmoov_msgs::MotorStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace inmoov_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'inmoov_msgs': ['/home/robot/inmoov_ros/src/inmoov_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::inmoov_msgs::MotorStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::inmoov_msgs::MotorStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::inmoov_msgs::MotorStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::inmoov_msgs::MotorStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::inmoov_msgs::MotorStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::inmoov_msgs::MotorStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::inmoov_msgs::MotorStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9168929a0bdbdd12367c31a81e54ef98";
  }

  static const char* value(const ::inmoov_msgs::MotorStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9168929a0bdbdd12ULL;
  static const uint64_t static_value2 = 0x367c31a81e54ef98ULL;
};

template<class ContainerAllocator>
struct DataType< ::inmoov_msgs::MotorStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "inmoov_msgs/MotorStatus";
  }

  static const char* value(const ::inmoov_msgs::MotorStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::inmoov_msgs::MotorStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string   joint          # joint name for status frame (populated in motor_status_dispatcher)\n\
uint8    bus            # bus source for status frame (populated in motor_status_dispatcher)\n\
uint8    servoPin       # motor id 0-11\n\
float32  goal           # command position\n\
float32  position       # current sensed position\n\
uint8    smooth         #smooth setting servo is set to\n\
float32  maxSpeed	#max speed setting\n\
float32  presentspeed   # calculated rotational speed\n\
bool     moving         # is servo moving?\n\
uint16   posraw         # raw position sensor value\n\
bool     enabled        # is servo enabled?\n\
bool     power          # does servo have power?\n\
float32  Debug1		#Debug 1\n\
float32  Debug2		#Debug 2\n\
float32  Debug3		#Debug 3\n\
\n\
\n\
";
  }

  static const char* value(const ::inmoov_msgs::MotorStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::inmoov_msgs::MotorStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint);
      stream.next(m.bus);
      stream.next(m.servoPin);
      stream.next(m.goal);
      stream.next(m.position);
      stream.next(m.smooth);
      stream.next(m.maxSpeed);
      stream.next(m.presentspeed);
      stream.next(m.moving);
      stream.next(m.posraw);
      stream.next(m.enabled);
      stream.next(m.power);
      stream.next(m.Debug1);
      stream.next(m.Debug2);
      stream.next(m.Debug3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::inmoov_msgs::MotorStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::inmoov_msgs::MotorStatus_<ContainerAllocator>& v)
  {
    s << indent << "joint: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.joint);
    s << indent << "bus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.bus);
    s << indent << "servoPin: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.servoPin);
    s << indent << "goal: ";
    Printer<float>::stream(s, indent + "  ", v.goal);
    s << indent << "position: ";
    Printer<float>::stream(s, indent + "  ", v.position);
    s << indent << "smooth: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.smooth);
    s << indent << "maxSpeed: ";
    Printer<float>::stream(s, indent + "  ", v.maxSpeed);
    s << indent << "presentspeed: ";
    Printer<float>::stream(s, indent + "  ", v.presentspeed);
    s << indent << "moving: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.moving);
    s << indent << "posraw: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.posraw);
    s << indent << "enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enabled);
    s << indent << "power: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.power);
    s << indent << "Debug1: ";
    Printer<float>::stream(s, indent + "  ", v.Debug1);
    s << indent << "Debug2: ";
    Printer<float>::stream(s, indent + "  ", v.Debug2);
    s << indent << "Debug3: ";
    Printer<float>::stream(s, indent + "  ", v.Debug3);
  }
};

} // namespace message_operations
} // namespace ros

#endif // INMOOV_MSGS_MESSAGE_MOTORSTATUS_H
