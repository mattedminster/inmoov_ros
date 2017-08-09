// Generated by gencpp from file theora_image_transport/Packet.msg
// DO NOT EDIT!


#ifndef THEORA_IMAGE_TRANSPORT_MESSAGE_PACKET_H
#define THEORA_IMAGE_TRANSPORT_MESSAGE_PACKET_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace theora_image_transport
{
template <class ContainerAllocator>
struct Packet_
{
  typedef Packet_<ContainerAllocator> Type;

  Packet_()
    : header()
    , data()
    , b_o_s(0)
    , e_o_s(0)
    , granulepos(0)
    , packetno(0)  {
    }
  Packet_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , data(_alloc)
    , b_o_s(0)
    , e_o_s(0)
    , granulepos(0)
    , packetno(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _data_type;
  _data_type data;

   typedef int32_t _b_o_s_type;
  _b_o_s_type b_o_s;

   typedef int32_t _e_o_s_type;
  _e_o_s_type e_o_s;

   typedef int64_t _granulepos_type;
  _granulepos_type granulepos;

   typedef int64_t _packetno_type;
  _packetno_type packetno;




  typedef boost::shared_ptr< ::theora_image_transport::Packet_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::theora_image_transport::Packet_<ContainerAllocator> const> ConstPtr;

}; // struct Packet_

typedef ::theora_image_transport::Packet_<std::allocator<void> > Packet;

typedef boost::shared_ptr< ::theora_image_transport::Packet > PacketPtr;
typedef boost::shared_ptr< ::theora_image_transport::Packet const> PacketConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::theora_image_transport::Packet_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::theora_image_transport::Packet_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace theora_image_transport

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'theora_image_transport': ['/home/robot/inmoov_ros/src/image_transport_plugins/theora_image_transport/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::theora_image_transport::Packet_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::theora_image_transport::Packet_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::theora_image_transport::Packet_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::theora_image_transport::Packet_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::theora_image_transport::Packet_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::theora_image_transport::Packet_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::theora_image_transport::Packet_<ContainerAllocator> >
{
  static const char* value()
  {
    return "33ac4e14a7cff32e7e0d65f18bb410f3";
  }

  static const char* value(const ::theora_image_transport::Packet_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x33ac4e14a7cff32eULL;
  static const uint64_t static_value2 = 0x7e0d65f18bb410f3ULL;
};

template<class ContainerAllocator>
struct DataType< ::theora_image_transport::Packet_<ContainerAllocator> >
{
  static const char* value()
  {
    return "theora_image_transport/Packet";
  }

  static const char* value(const ::theora_image_transport::Packet_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::theora_image_transport::Packet_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ROS message adaptation of the ogg_packet struct from libogg,\n\
# see http://www.xiph.org/ogg/doc/libogg/ogg_packet.html.\n\
\n\
Header header     # Original sensor_msgs/Image header\n\
uint8[] data      # Raw Theora packet data (combines packet and bytes fields from ogg_packet)\n\
int32 b_o_s       # Flag indicating whether this packet begins a logical bitstream\n\
int32 e_o_s       # Flag indicating whether this packet ends a bitstream\n\
int64 granulepos  # A number indicating the position of this packet in the decoded data\n\
int64 packetno    # Sequential number of this packet in the ogg bitstream\n\
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
";
  }

  static const char* value(const ::theora_image_transport::Packet_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::theora_image_transport::Packet_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.data);
      stream.next(m.b_o_s);
      stream.next(m.e_o_s);
      stream.next(m.granulepos);
      stream.next(m.packetno);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Packet_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::theora_image_transport::Packet_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::theora_image_transport::Packet_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.data[i]);
    }
    s << indent << "b_o_s: ";
    Printer<int32_t>::stream(s, indent + "  ", v.b_o_s);
    s << indent << "e_o_s: ";
    Printer<int32_t>::stream(s, indent + "  ", v.e_o_s);
    s << indent << "granulepos: ";
    Printer<int64_t>::stream(s, indent + "  ", v.granulepos);
    s << indent << "packetno: ";
    Printer<int64_t>::stream(s, indent + "  ", v.packetno);
  }
};

} // namespace message_operations
} // namespace ros

#endif // THEORA_IMAGE_TRANSPORT_MESSAGE_PACKET_H
