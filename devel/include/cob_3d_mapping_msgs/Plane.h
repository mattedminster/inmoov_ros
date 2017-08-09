// Generated by gencpp from file cob_3d_mapping_msgs/Plane.msg
// DO NOT EDIT!


#ifndef COB_3D_MAPPING_MSGS_MESSAGE_PLANE_H
#define COB_3D_MAPPING_MSGS_MESSAGE_PLANE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <cob_3d_mapping_msgs/Polygon.h>
#include <geometry_msgs/Pose.h>
#include <std_msgs/ColorRGBA.h>

namespace cob_3d_mapping_msgs
{
template <class ContainerAllocator>
struct Plane_
{
  typedef Plane_<ContainerAllocator> Type;

  Plane_()
    : polygons()
    , pose()
    , weight(0.0)
    , color()  {
    }
  Plane_(const ContainerAllocator& _alloc)
    : polygons(_alloc)
    , pose(_alloc)
    , weight(0.0)
    , color(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::cob_3d_mapping_msgs::Polygon_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::cob_3d_mapping_msgs::Polygon_<ContainerAllocator> >::other >  _polygons_type;
  _polygons_type polygons;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef float _weight_type;
  _weight_type weight;

   typedef  ::std_msgs::ColorRGBA_<ContainerAllocator>  _color_type;
  _color_type color;




  typedef boost::shared_ptr< ::cob_3d_mapping_msgs::Plane_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_3d_mapping_msgs::Plane_<ContainerAllocator> const> ConstPtr;

}; // struct Plane_

typedef ::cob_3d_mapping_msgs::Plane_<std::allocator<void> > Plane;

typedef boost::shared_ptr< ::cob_3d_mapping_msgs::Plane > PlanePtr;
typedef boost::shared_ptr< ::cob_3d_mapping_msgs::Plane const> PlaneConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cob_3d_mapping_msgs::Plane_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cob_3d_mapping_msgs::Plane_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cob_3d_mapping_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'cob_object_detection_msgs': ['/home/robot/inmoov_ros/devel/share/cob_object_detection_msgs/msg', '/home/robot/inmoov_ros/src/cob_perception_common/cob_object_detection_msgs/msg'], 'cob_3d_mapping_msgs': ['/home/robot/inmoov_ros/devel/share/cob_3d_mapping_msgs/msg', '/home/robot/inmoov_ros/src/cob_perception_common/cob_3d_mapping_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cob_3d_mapping_msgs::Plane_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cob_3d_mapping_msgs::Plane_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cob_3d_mapping_msgs::Plane_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cob_3d_mapping_msgs::Plane_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cob_3d_mapping_msgs::Plane_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cob_3d_mapping_msgs::Plane_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cob_3d_mapping_msgs::Plane_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dfaae30aed6b6175cbcc972b30123ff6";
  }

  static const char* value(const ::cob_3d_mapping_msgs::Plane_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdfaae30aed6b6175ULL;
  static const uint64_t static_value2 = 0xcbcc972b30123ff6ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_3d_mapping_msgs::Plane_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cob_3d_mapping_msgs/Plane";
  }

  static const char* value(const ::cob_3d_mapping_msgs::Plane_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cob_3d_mapping_msgs::Plane_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#polygons describing hull\n\
#first polygon -> outer hull\n\
Polygon[] polygons\n\
\n\
#pose describing parameters of plane\n\
geometry_msgs/Pose pose\n\
\n\
#number of points\n\
float32 weight\n\
\n\
#averaged color [deprecated to be removed]\n\
std_msgs/ColorRGBA color\n\
\n\
================================================================================\n\
MSG: cob_3d_mapping_msgs/Polygon\n\
#points describing polygon\n\
Point2D[] points\n\
\n\
================================================================================\n\
MSG: cob_3d_mapping_msgs/Point2D\n\
#coordinate on surface\n\
float32 x\n\
float32 y\n\
\n\
#texture cooridante\n\
float32 tex_x\n\
float32 tex_y\n\
\n\
float32 var\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: std_msgs/ColorRGBA\n\
float32 r\n\
float32 g\n\
float32 b\n\
float32 a\n\
";
  }

  static const char* value(const ::cob_3d_mapping_msgs::Plane_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cob_3d_mapping_msgs::Plane_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.polygons);
      stream.next(m.pose);
      stream.next(m.weight);
      stream.next(m.color);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Plane_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cob_3d_mapping_msgs::Plane_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cob_3d_mapping_msgs::Plane_<ContainerAllocator>& v)
  {
    s << indent << "polygons[]" << std::endl;
    for (size_t i = 0; i < v.polygons.size(); ++i)
    {
      s << indent << "  polygons[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::cob_3d_mapping_msgs::Polygon_<ContainerAllocator> >::stream(s, indent + "    ", v.polygons[i]);
    }
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "weight: ";
    Printer<float>::stream(s, indent + "  ", v.weight);
    s << indent << "color: ";
    s << std::endl;
    Printer< ::std_msgs::ColorRGBA_<ContainerAllocator> >::stream(s, indent + "  ", v.color);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COB_3D_MAPPING_MSGS_MESSAGE_PLANE_H
