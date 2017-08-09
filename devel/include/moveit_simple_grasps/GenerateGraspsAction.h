// Generated by gencpp from file moveit_simple_grasps/GenerateGraspsAction.msg
// DO NOT EDIT!


#ifndef MOVEIT_SIMPLE_GRASPS_MESSAGE_GENERATEGRASPSACTION_H
#define MOVEIT_SIMPLE_GRASPS_MESSAGE_GENERATEGRASPSACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <moveit_simple_grasps/GenerateGraspsActionGoal.h>
#include <moveit_simple_grasps/GenerateGraspsActionResult.h>
#include <moveit_simple_grasps/GenerateGraspsActionFeedback.h>

namespace moveit_simple_grasps
{
template <class ContainerAllocator>
struct GenerateGraspsAction_
{
  typedef GenerateGraspsAction_<ContainerAllocator> Type;

  GenerateGraspsAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  GenerateGraspsAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::moveit_simple_grasps::GenerateGraspsActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::moveit_simple_grasps::GenerateGraspsActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::moveit_simple_grasps::GenerateGraspsActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;




  typedef boost::shared_ptr< ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator> const> ConstPtr;

}; // struct GenerateGraspsAction_

typedef ::moveit_simple_grasps::GenerateGraspsAction_<std::allocator<void> > GenerateGraspsAction;

typedef boost::shared_ptr< ::moveit_simple_grasps::GenerateGraspsAction > GenerateGraspsActionPtr;
typedef boost::shared_ptr< ::moveit_simple_grasps::GenerateGraspsAction const> GenerateGraspsActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace moveit_simple_grasps

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'shape_msgs': ['/opt/ros/kinetic/share/shape_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'object_recognition_msgs': ['/home/robot/inmoov_ros/devel/share/object_recognition_msgs/msg', '/home/robot/inmoov_ros/src/object_recognition_msgs/msg'], 'octomap_msgs': ['/opt/ros/kinetic/share/octomap_msgs/cmake/../msg'], 'moveit_simple_grasps': ['/home/robot/inmoov_ros/src/moveit_simple_grasps/msg', '/home/robot/inmoov_ros/devel/share/moveit_simple_grasps/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'moveit_msgs': ['/home/robot/inmoov_ros/devel/share/moveit_msgs/msg', '/home/robot/inmoov_ros/src/moveit_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c6a4a26da55f3310edbc8a5586b98c78";
  }

  static const char* value(const ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc6a4a26da55f3310ULL;
  static const uint64_t static_value2 = 0xedbc8a5586b98c78ULL;
};

template<class ContainerAllocator>
struct DataType< ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moveit_simple_grasps/GenerateGraspsAction";
  }

  static const char* value(const ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
GenerateGraspsActionGoal action_goal\n\
GenerateGraspsActionResult action_result\n\
GenerateGraspsActionFeedback action_feedback\n\
\n\
================================================================================\n\
MSG: moveit_simple_grasps/GenerateGraspsActionGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
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
MSG: moveit_simple_grasps/GenerateGraspsGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal\n\
geometry_msgs/Pose pose\n\
float64 width\n\
moveit_simple_grasps/GraspGeneratorOptions[] options\n\
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
MSG: moveit_simple_grasps/GraspGeneratorOptions\n\
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
\n\
================================================================================\n\
MSG: moveit_simple_grasps/GenerateGraspsActionResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
GenerateGraspsResult result\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalStatus\n\
GoalID goal_id\n\
uint8 status\n\
uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n\
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n\
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n\
                            #   and has since completed its execution (Terminal State)\n\
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n\
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n\
                            #    to some failure (Terminal State)\n\
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n\
                            #    because the goal was unattainable or invalid (Terminal State)\n\
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n\
                            #    and has not yet completed execution\n\
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n\
                            #    but the action server has not yet confirmed that the goal is canceled\n\
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n\
                            #    and was successfully cancelled (Terminal State)\n\
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n\
                            #    sent over the wire by an action server\n\
\n\
#Allow for the user to associate a string with GoalStatus for debugging\n\
string text\n\
\n\
\n\
================================================================================\n\
MSG: moveit_simple_grasps/GenerateGraspsResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#result\n\
moveit_msgs/Grasp[] grasps\n\
\n\
================================================================================\n\
MSG: moveit_msgs/Grasp\n\
# This message contains a description of a grasp that would be used\n\
# with a particular end-effector to grasp an object, including how to\n\
# approach it, grip it, etc.  This message does not contain any\n\
# information about a \"grasp point\" (a position ON the object).\n\
# Whatever generates this message should have already combined\n\
# information about grasp points with information about the geometry\n\
# of the end-effector to compute the grasp_pose in this message.\n\
\n\
# A name for this grasp\n\
string id\n\
\n\
# The internal posture of the hand for the pre-grasp\n\
# only positions are used\n\
trajectory_msgs/JointTrajectory pre_grasp_posture\n\
\n\
# The internal posture of the hand for the grasp\n\
# positions and efforts are used\n\
trajectory_msgs/JointTrajectory grasp_posture\n\
\n\
# The position of the end-effector for the grasp.  This is the pose of\n\
# the \"parent_link\" of the end-effector, not actually the pose of any\n\
# link *in* the end-effector.  Typically this would be the pose of the\n\
# most distal wrist link before the hand (end-effector) links began.\n\
geometry_msgs/PoseStamped grasp_pose\n\
\n\
# The estimated probability of success for this grasp, or some other\n\
# measure of how \"good\" it is.\n\
float64 grasp_quality\n\
\n\
# The approach direction to take before picking an object\n\
GripperTranslation pre_grasp_approach\n\
\n\
# The retreat direction to take after a grasp has been completed (object is attached)\n\
GripperTranslation post_grasp_retreat\n\
\n\
# The retreat motion to perform when releasing the object; this information\n\
# is not necessary for the grasp itself, but when releasing the object,\n\
# the information will be necessary. The grasp used to perform a pickup\n\
# is returned as part of the result, so this information is available for \n\
# later use.\n\
GripperTranslation post_place_retreat\n\
\n\
# the maximum contact force to use while grasping (<=0 to disable)\n\
float32 max_contact_force\n\
\n\
# an optional list of obstacles that we have semantic information about\n\
# and that can be touched/pushed/moved in the course of grasping\n\
string[] allowed_touch_objects\n\
\n\
================================================================================\n\
MSG: trajectory_msgs/JointTrajectory\n\
Header header\n\
string[] joint_names\n\
JointTrajectoryPoint[] points\n\
================================================================================\n\
MSG: trajectory_msgs/JointTrajectoryPoint\n\
# Each trajectory point specifies either positions[, velocities[, accelerations]]\n\
# or positions[, effort] for the trajectory to be executed.\n\
# All specified values are in the same order as the joint names in JointTrajectory.msg\n\
\n\
float64[] positions\n\
float64[] velocities\n\
float64[] accelerations\n\
float64[] effort\n\
duration time_from_start\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: moveit_msgs/GripperTranslation\n\
# defines a translation for the gripper, used in pickup or place tasks\n\
# for example for lifting an object off a table or approaching the table for placing\n\
\n\
# the direction of the translation\n\
geometry_msgs/Vector3Stamped direction\n\
\n\
# the desired translation distance\n\
float32 desired_distance\n\
\n\
# the min distance that must be considered feasible before the\n\
# grasp is even attempted\n\
float32 min_distance\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3Stamped\n\
# This represents a Vector3 with reference coordinate frame and timestamp\n\
Header header\n\
Vector3 vector\n\
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
================================================================================\n\
MSG: moveit_simple_grasps/GenerateGraspsActionFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
GenerateGraspsFeedback feedback\n\
\n\
================================================================================\n\
MSG: moveit_simple_grasps/GenerateGraspsFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#feedback\n\
moveit_msgs/Grasp[] grasps\n\
\n\
";
  }

  static const char* value(const ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GenerateGraspsAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moveit_simple_grasps::GenerateGraspsAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::moveit_simple_grasps::GenerateGraspsActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::moveit_simple_grasps::GenerateGraspsActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::moveit_simple_grasps::GenerateGraspsActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVEIT_SIMPLE_GRASPS_MESSAGE_GENERATEGRASPSACTION_H
