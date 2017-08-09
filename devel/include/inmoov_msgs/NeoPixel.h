// Generated by gencpp from file inmoov_msgs/NeoPixel.msg
// DO NOT EDIT!


#ifndef INMOOV_MSGS_MESSAGE_NEOPIXEL_H
#define INMOOV_MSGS_MESSAGE_NEOPIXEL_H


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
struct NeoPixel_
{
  typedef NeoPixel_<ContainerAllocator> Type;

  NeoPixel_()
    : pixelNum(0)
    , pixel_red(0)
    , pixel_green(0)
    , pixel_blue(0)
    , show(0)  {
    }
  NeoPixel_(const ContainerAllocator& _alloc)
    : pixelNum(0)
    , pixel_red(0)
    , pixel_green(0)
    , pixel_blue(0)
    , show(0)  {
  (void)_alloc;
    }



   typedef int32_t _pixelNum_type;
  _pixelNum_type pixelNum;

   typedef int32_t _pixel_red_type;
  _pixel_red_type pixel_red;

   typedef int32_t _pixel_green_type;
  _pixel_green_type pixel_green;

   typedef int32_t _pixel_blue_type;
  _pixel_blue_type pixel_blue;

   typedef int32_t _show_type;
  _show_type show;




  typedef boost::shared_ptr< ::inmoov_msgs::NeoPixel_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::inmoov_msgs::NeoPixel_<ContainerAllocator> const> ConstPtr;

}; // struct NeoPixel_

typedef ::inmoov_msgs::NeoPixel_<std::allocator<void> > NeoPixel;

typedef boost::shared_ptr< ::inmoov_msgs::NeoPixel > NeoPixelPtr;
typedef boost::shared_ptr< ::inmoov_msgs::NeoPixel const> NeoPixelConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::inmoov_msgs::NeoPixel_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::inmoov_msgs::NeoPixel_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace inmoov_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'inmoov_msgs': ['/home/robot/inmoov_ros/src/inmoov_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::inmoov_msgs::NeoPixel_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::inmoov_msgs::NeoPixel_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::inmoov_msgs::NeoPixel_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::inmoov_msgs::NeoPixel_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::inmoov_msgs::NeoPixel_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::inmoov_msgs::NeoPixel_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::inmoov_msgs::NeoPixel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d4a1ce762728c83a5b2027e8e116f9ea";
  }

  static const char* value(const ::inmoov_msgs::NeoPixel_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd4a1ce762728c83aULL;
  static const uint64_t static_value2 = 0x5b2027e8e116f9eaULL;
};

template<class ContainerAllocator>
struct DataType< ::inmoov_msgs::NeoPixel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "inmoov_msgs/NeoPixel";
  }

  static const char* value(const ::inmoov_msgs::NeoPixel_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::inmoov_msgs::NeoPixel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 pixelNum\n\
int32 pixel_red\n\
int32 pixel_green\n\
int32 pixel_blue\n\
int32 show\n\
";
  }

  static const char* value(const ::inmoov_msgs::NeoPixel_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::inmoov_msgs::NeoPixel_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pixelNum);
      stream.next(m.pixel_red);
      stream.next(m.pixel_green);
      stream.next(m.pixel_blue);
      stream.next(m.show);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NeoPixel_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::inmoov_msgs::NeoPixel_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::inmoov_msgs::NeoPixel_<ContainerAllocator>& v)
  {
    s << indent << "pixelNum: ";
    Printer<int32_t>::stream(s, indent + "  ", v.pixelNum);
    s << indent << "pixel_red: ";
    Printer<int32_t>::stream(s, indent + "  ", v.pixel_red);
    s << indent << "pixel_green: ";
    Printer<int32_t>::stream(s, indent + "  ", v.pixel_green);
    s << indent << "pixel_blue: ";
    Printer<int32_t>::stream(s, indent + "  ", v.pixel_blue);
    s << indent << "show: ";
    Printer<int32_t>::stream(s, indent + "  ", v.show);
  }
};

} // namespace message_operations
} // namespace ros

#endif // INMOOV_MSGS_MESSAGE_NEOPIXEL_H