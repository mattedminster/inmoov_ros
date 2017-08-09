// Generated by gencpp from file inmoov_msgs/Status.msg
// DO NOT EDIT!


#ifndef INMOOV_MSGS_MESSAGE_STATUS_H
#define INMOOV_MSGS_MESSAGE_STATUS_H


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
struct Status_
{
  typedef Status_<ContainerAllocator> Type;

  Status_()
    : component()
    , status(false)
    , severity(0)
    , message()  {
    }
  Status_(const ContainerAllocator& _alloc)
    : component(_alloc)
    , status(false)
    , severity(0)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _component_type;
  _component_type component;

   typedef uint8_t _status_type;
  _status_type status;

   typedef uint8_t _severity_type;
  _severity_type severity;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;


    enum { SEVERITY_INFO = 0u };
     enum { SEVERITY_WARNING = 1u };
     enum { SEVERITY_ERROR = 2u };
     enum { SEVERITY_FATAL = 3u };
 

  typedef boost::shared_ptr< ::inmoov_msgs::Status_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::inmoov_msgs::Status_<ContainerAllocator> const> ConstPtr;

}; // struct Status_

typedef ::inmoov_msgs::Status_<std::allocator<void> > Status;

typedef boost::shared_ptr< ::inmoov_msgs::Status > StatusPtr;
typedef boost::shared_ptr< ::inmoov_msgs::Status const> StatusConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::inmoov_msgs::Status_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::inmoov_msgs::Status_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::inmoov_msgs::Status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::inmoov_msgs::Status_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::inmoov_msgs::Status_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::inmoov_msgs::Status_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::inmoov_msgs::Status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::inmoov_msgs::Status_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::inmoov_msgs::Status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "148ef940c96440f91ff132cdf07570ea";
  }

  static const char* value(const ::inmoov_msgs::Status_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x148ef940c96440f9ULL;
  static const uint64_t static_value2 = 0x1ff132cdf07570eaULL;
};

template<class ContainerAllocator>
struct DataType< ::inmoov_msgs::Status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "inmoov_msgs/Status";
  }

  static const char* value(const ::inmoov_msgs::Status_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::inmoov_msgs::Status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Status reporting message\n\
#\n\
#\n\
uint8 SEVERITY_INFO=0\n\
uint8 SEVERITY_WARNING=1\n\
uint8 SEVERITY_ERROR=2\n\
uint8 SEVERITY_FATAL=3\n\
string  component\n\
bool    status\n\
uint8   severity\n\
string  message\n\
";
  }

  static const char* value(const ::inmoov_msgs::Status_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::inmoov_msgs::Status_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.component);
      stream.next(m.status);
      stream.next(m.severity);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Status_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::inmoov_msgs::Status_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::inmoov_msgs::Status_<ContainerAllocator>& v)
  {
    s << indent << "component: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.component);
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
    s << indent << "severity: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.severity);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // INMOOV_MSGS_MESSAGE_STATUS_H
