// Generated by gencpp from file object_recognition_msgs/GetObjectInformationRequest.msg
// DO NOT EDIT!


#ifndef OBJECT_RECOGNITION_MSGS_MESSAGE_GETOBJECTINFORMATIONREQUEST_H
#define OBJECT_RECOGNITION_MSGS_MESSAGE_GETOBJECTINFORMATIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <object_recognition_msgs/ObjectType.h>

namespace object_recognition_msgs
{
template <class ContainerAllocator>
struct GetObjectInformationRequest_
{
  typedef GetObjectInformationRequest_<ContainerAllocator> Type;

  GetObjectInformationRequest_()
    : type()  {
    }
  GetObjectInformationRequest_(const ContainerAllocator& _alloc)
    : type(_alloc)  {
  (void)_alloc;
    }



   typedef  ::object_recognition_msgs::ObjectType_<ContainerAllocator>  _type_type;
  _type_type type;




  typedef boost::shared_ptr< ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetObjectInformationRequest_

typedef ::object_recognition_msgs::GetObjectInformationRequest_<std::allocator<void> > GetObjectInformationRequest;

typedef boost::shared_ptr< ::object_recognition_msgs::GetObjectInformationRequest > GetObjectInformationRequestPtr;
typedef boost::shared_ptr< ::object_recognition_msgs::GetObjectInformationRequest const> GetObjectInformationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace object_recognition_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'shape_msgs': ['/opt/ros/kinetic/share/shape_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'object_recognition_msgs': ['/home/robot/inmoov_ros/devel/share/object_recognition_msgs/msg', '/home/robot/inmoov_ros/src/object_recognition_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0d72b69e80da0fe473b0bdcdd7a28d4d";
  }

  static const char* value(const ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0d72b69e80da0fe4ULL;
  static const uint64_t static_value2 = 0x73b0bdcdd7a28d4dULL;
};

template<class ContainerAllocator>
struct DataType< ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "object_recognition_msgs/GetObjectInformationRequest";
  }

  static const char* value(const ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
object_recognition_msgs/ObjectType type\n\
\n\
\n\
================================================================================\n\
MSG: object_recognition_msgs/ObjectType\n\
################################################## OBJECT ID #########################################################\n\
\n\
# Contains information about the type of a found object. Those two sets of parameters together uniquely define an\n\
# object\n\
\n\
# The key of the found object: the unique identifier in the given db\n\
string key\n\
\n\
# The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding\n\
# database. E.g., in object_recognition, it can look like: \"{'type':'CouchDB', 'root':'http://localhost'}\"\n\
# There is no conventional format for those parameters and it's nice to keep that flexibility.\n\
# The object_recognition_core as a generic DB type that can read those fields\n\
# Current examples:\n\
# For CouchDB:\n\
#   type: 'CouchDB'\n\
#   root: 'http://localhost:5984'\n\
#   collection: 'object_recognition'\n\
# For SQL household database:\n\
#   type: 'SqlHousehold'\n\
#   host: 'wgs36'\n\
#   port: 5432\n\
#   user: 'willow'\n\
#   password: 'willow'\n\
#   name: 'household_objects'\n\
#   module: 'tabletop'\n\
string db\n\
";
  }

  static const char* value(const ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetObjectInformationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::object_recognition_msgs::GetObjectInformationRequest_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    s << std::endl;
    Printer< ::object_recognition_msgs::ObjectType_<ContainerAllocator> >::stream(s, indent + "  ", v.type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBJECT_RECOGNITION_MSGS_MESSAGE_GETOBJECTINFORMATIONREQUEST_H
