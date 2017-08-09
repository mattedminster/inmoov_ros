// Generated by gencpp from file moveit_simple_grasps/GraspGeneratorOptions.msg
// DO NOT EDIT!


#ifndef MOVEIT_SIMPLE_GRASPS_MESSAGE_GRASPGENERATOROPTIONS_H
#define MOVEIT_SIMPLE_GRASPS_MESSAGE_GRASPGENERATOROPTIONS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace moveit_simple_grasps
{
template <class ContainerAllocator>
struct GraspGeneratorOptions_
{
  typedef GraspGeneratorOptions_<ContainerAllocator> Type;

  GraspGeneratorOptions_()
    : grasp_axis(0)
    , grasp_direction(0)
    , grasp_rotation(0)  {
    }
  GraspGeneratorOptions_(const ContainerAllocator& _alloc)
    : grasp_axis(0)
    , grasp_direction(0)
    , grasp_rotation(0)  {
  (void)_alloc;
    }



   typedef uint8_t _grasp_axis_type;
  _grasp_axis_type grasp_axis;

   typedef uint8_t _grasp_direction_type;
  _grasp_direction_type grasp_direction;

   typedef uint8_t _grasp_rotation_type;
  _grasp_rotation_type grasp_rotation;


    enum { GRASP_AXIS_X = 0u };
     enum { GRASP_AXIS_Y = 1u };
     enum { GRASP_AXIS_Z = 2u };
     enum { GRASP_DIRECTION_UP = 0u };
     enum { GRASP_DIRECTION_DOWN = 1u };
     enum { GRASP_ROTATION_HALF = 0u };
     enum { GRASP_ROTATION_FULL = 1u };
 

  typedef boost::shared_ptr< ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator> const> ConstPtr;

}; // struct GraspGeneratorOptions_

typedef ::moveit_simple_grasps::GraspGeneratorOptions_<std::allocator<void> > GraspGeneratorOptions;

typedef boost::shared_ptr< ::moveit_simple_grasps::GraspGeneratorOptions > GraspGeneratorOptionsPtr;
typedef boost::shared_ptr< ::moveit_simple_grasps::GraspGeneratorOptions const> GraspGeneratorOptionsConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace moveit_simple_grasps

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'shape_msgs': ['/opt/ros/kinetic/share/shape_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'object_recognition_msgs': ['/home/robot/inmoov_ros/devel/share/object_recognition_msgs/msg', '/home/robot/inmoov_ros/src/object_recognition_msgs/msg'], 'octomap_msgs': ['/opt/ros/kinetic/share/octomap_msgs/cmake/../msg'], 'moveit_simple_grasps': ['/home/robot/inmoov_ros/src/moveit_simple_grasps/msg', '/home/robot/inmoov_ros/devel/share/moveit_simple_grasps/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'moveit_msgs': ['/home/robot/inmoov_ros/devel/share/moveit_msgs/msg', '/home/robot/inmoov_ros/src/moveit_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator> >
{
  static const char* value()
  {
    return "99863eab001728611523218e2a9810a3";
  }

  static const char* value(const ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x99863eab00172861ULL;
  static const uint64_t static_value2 = 0x1523218e2a9810a3ULL;
};

template<class ContainerAllocator>
struct DataType< ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moveit_simple_grasps/GraspGeneratorOptions";
  }

  static const char* value(const ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 grasp_axis\n\
uint8 GRASP_AXIS_X = 0\n\
uint8 GRASP_AXIS_Y = 1\n\
uint8 GRASP_AXIS_Z = 2\n\
\n\
uint8 grasp_direction\n\
uint8 GRASP_DIRECTION_UP = 0\n\
uint8 GRASP_DIRECTION_DOWN = 1\n\
\n\
uint8 grasp_rotation\n\
uint8 GRASP_ROTATION_HALF = 0\n\
uint8 GRASP_ROTATION_FULL = 1\n\
";
  }

  static const char* value(const ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.grasp_axis);
      stream.next(m.grasp_direction);
      stream.next(m.grasp_rotation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GraspGeneratorOptions_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moveit_simple_grasps::GraspGeneratorOptions_<ContainerAllocator>& v)
  {
    s << indent << "grasp_axis: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.grasp_axis);
    s << indent << "grasp_direction: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.grasp_direction);
    s << indent << "grasp_rotation: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.grasp_rotation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVEIT_SIMPLE_GRASPS_MESSAGE_GRASPGENERATOROPTIONS_H