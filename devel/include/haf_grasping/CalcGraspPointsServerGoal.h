// Generated by gencpp from file haf_grasping/CalcGraspPointsServerGoal.msg
// DO NOT EDIT!


#ifndef HAF_GRASPING_MESSAGE_CALCGRASPPOINTSSERVERGOAL_H
#define HAF_GRASPING_MESSAGE_CALCGRASPPOINTSSERVERGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <haf_grasping/GraspInput.h>

namespace haf_grasping
{
template <class ContainerAllocator>
struct CalcGraspPointsServerGoal_
{
  typedef CalcGraspPointsServerGoal_<ContainerAllocator> Type;

  CalcGraspPointsServerGoal_()
    : graspinput()  {
    }
  CalcGraspPointsServerGoal_(const ContainerAllocator& _alloc)
    : graspinput(_alloc)  {
  (void)_alloc;
    }



   typedef  ::haf_grasping::GraspInput_<ContainerAllocator>  _graspinput_type;
  _graspinput_type graspinput;




  typedef boost::shared_ptr< ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator> const> ConstPtr;

}; // struct CalcGraspPointsServerGoal_

typedef ::haf_grasping::CalcGraspPointsServerGoal_<std::allocator<void> > CalcGraspPointsServerGoal;

typedef boost::shared_ptr< ::haf_grasping::CalcGraspPointsServerGoal > CalcGraspPointsServerGoalPtr;
typedef boost::shared_ptr< ::haf_grasping::CalcGraspPointsServerGoal const> CalcGraspPointsServerGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace haf_grasping

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg'], 'actionlib': ['/opt/ros/kinetic/share/actionlib/cmake/../msg'], 'haf_grasping': ['/home/robot/inmoov_ros/src/haf_grasping/msg', '/home/robot/inmoov_ros/devel/share/haf_grasping/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8c521947ebce668f8c8bdb6ccc835205";
  }

  static const char* value(const ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8c521947ebce668fULL;
  static const uint64_t static_value2 = 0x8c8bdb6ccc835205ULL;
};

template<class ContainerAllocator>
struct DataType< ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "haf_grasping/CalcGraspPointsServerGoal";
  }

  static const char* value(const ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Define the input for grasp calculation: a point cloud\n\
haf_grasping/GraspInput graspinput\n\
\n\
================================================================================\n\
MSG: haf_grasping/GraspInput\n\
\n\
#Header header                        	# header for time/frame information\n\
sensor_msgs/PointCloud2 input_pc     	# defines the point cloud on which grasps should be calculated (objects)\n\
string goal_frame_id				 	# the frame_id to which the point cloud should be transformed before grasps are calculated\n\
geometry_msgs/Point grasp_area_center 	# center of the region where grasps are searched\n\
float32 grasp_area_length_x				# defines the length of the rectangle (in x direction (in m)) where grasps are searched (with center grasp_area_center)\n\
float32 grasp_area_length_y				# defines the length of the rectangle (in y direction (in m)) where grasps are searched (with center grasp_area_center)\n\
\n\
\n\
duration max_calculation_time			# maximal calculation time before grasp result is returned\n\
bool show_only_best_grasp				# If true, only the best grasp is shown in visualization\n\
int32 threshold_grasp_evaluation		# defines the threshold for return_first_grasp_over_th if it is set to true (otherwise it is ignored)\n\
\n\
geometry_msgs/Vector3 approach_vector	# defines the direction from where a grasp should be executed \n\
int32 gripper_opening_width				# defines the factor (actually 1/factor) that is used for pre-grasp opening gripper width \n\
\n\
#geometry_msgs/Vector3 scale_gripper	# Scale of the gripper in x and y direction if it deviates from a gripper of the size of a huMAN hand\n\
\n\
\n\
================================================================================\n\
MSG: sensor_msgs/PointCloud2\n\
# This message holds a collection of N-dimensional points, which may\n\
# contain additional information such as normals, intensity, etc. The\n\
# point data is stored as a binary blob, its layout described by the\n\
# contents of the \"fields\" array.\n\
\n\
# The point cloud data may be organized 2d (image-like) or 1d\n\
# (unordered). Point clouds organized as 2d images may be produced by\n\
# camera depth sensors such as stereo or time-of-flight.\n\
\n\
# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n\
# points).\n\
Header header\n\
\n\
# 2D structure of the point cloud. If the cloud is unordered, height is\n\
# 1 and width is the length of the point cloud.\n\
uint32 height\n\
uint32 width\n\
\n\
# Describes the channels and their layout in the binary data blob.\n\
PointField[] fields\n\
\n\
bool    is_bigendian # Is this data bigendian?\n\
uint32  point_step   # Length of a point in bytes\n\
uint32  row_step     # Length of a row in bytes\n\
uint8[] data         # Actual point data, size is (row_step*height)\n\
\n\
bool is_dense        # True if there are no invalid points\n\
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
MSG: sensor_msgs/PointField\n\
# This message holds the description of one point entry in the\n\
# PointCloud2 message format.\n\
uint8 INT8    = 1\n\
uint8 UINT8   = 2\n\
uint8 INT16   = 3\n\
uint8 UINT16  = 4\n\
uint8 INT32   = 5\n\
uint8 UINT32  = 6\n\
uint8 FLOAT32 = 7\n\
uint8 FLOAT64 = 8\n\
\n\
string name      # Name of field\n\
uint32 offset    # Offset from start of point struct\n\
uint8  datatype  # Datatype enumeration, see above\n\
uint32 count     # How many elements in the field\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
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
";
  }

  static const char* value(const ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.graspinput);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CalcGraspPointsServerGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::haf_grasping::CalcGraspPointsServerGoal_<ContainerAllocator>& v)
  {
    s << indent << "graspinput: ";
    s << std::endl;
    Printer< ::haf_grasping::GraspInput_<ContainerAllocator> >::stream(s, indent + "  ", v.graspinput);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HAF_GRASPING_MESSAGE_CALCGRASPPOINTSSERVERGOAL_H
