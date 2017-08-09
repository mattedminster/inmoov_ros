// Generated by gencpp from file moveit_grasps/GenerateGraspsActionGoal.msg
// DO NOT EDIT!


#ifndef MOVEIT_GRASPS_MESSAGE_GENERATEGRASPSACTIONGOAL_H
#define MOVEIT_GRASPS_MESSAGE_GENERATEGRASPSACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <moveit_grasps/GenerateGraspsGoal.h>

namespace moveit_grasps
{
template <class ContainerAllocator>
struct GenerateGraspsActionGoal_
{
  typedef GenerateGraspsActionGoal_<ContainerAllocator> Type;

  GenerateGraspsActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  GenerateGraspsActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::moveit_grasps::GenerateGraspsGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;




  typedef boost::shared_ptr< ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct GenerateGraspsActionGoal_

typedef ::moveit_grasps::GenerateGraspsActionGoal_<std::allocator<void> > GenerateGraspsActionGoal;

typedef boost::shared_ptr< ::moveit_grasps::GenerateGraspsActionGoal > GenerateGraspsActionGoalPtr;
typedef boost::shared_ptr< ::moveit_grasps::GenerateGraspsActionGoal const> GenerateGraspsActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace moveit_grasps

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'shape_msgs': ['/opt/ros/kinetic/share/shape_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'moveit_msgs': ['/home/robot/inmoov_ros/devel/share/moveit_msgs/msg', '/home/robot/inmoov_ros/src/moveit_msgs/msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'object_recognition_msgs': ['/home/robot/inmoov_ros/devel/share/object_recognition_msgs/msg', '/home/robot/inmoov_ros/src/object_recognition_msgs/msg'], 'octomap_msgs': ['/opt/ros/kinetic/share/octomap_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'moveit_grasps': ['/home/robot/inmoov_ros/src/moveit_grasps/msg', '/home/robot/inmoov_ros/devel/share/moveit_grasps/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e0f0d8e26b9fd9f38b7f41063a057be2";
  }

  static const char* value(const ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe0f0d8e26b9fd9f3ULL;
  static const uint64_t static_value2 = 0x8b7f41063a057be2ULL;
};

template<class ContainerAllocator>
struct DataType< ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moveit_grasps/GenerateGraspsActionGoal";
  }

  static const char* value(const ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
GenerateGraspsGoal goal\n\
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
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: moveit_grasps/GenerateGraspsGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal\n\
geometry_msgs/Pose pose\n\
float64 width\n\
moveit_grasps/GraspGeneratorOptions[] options\n\
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
MSG: moveit_grasps/GraspGeneratorOptions\n\
uint8 grasp_axis\n\
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

  static const char* value(const ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GenerateGraspsActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moveit_grasps::GenerateGraspsActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::moveit_grasps::GenerateGraspsGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVEIT_GRASPS_MESSAGE_GENERATEGRASPSACTIONGOAL_H
