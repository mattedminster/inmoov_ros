# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from moveit_simple_grasps/GenerateGraspsGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import moveit_simple_grasps.msg

class GenerateGraspsGoal(genpy.Message):
  _md5sum = "162875df5b62e9fb4be6d2aa5a67176d"
  _type = "moveit_simple_grasps/GenerateGraspsGoal"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal
geometry_msgs/Pose pose
float64 width
moveit_simple_grasps/GraspGeneratorOptions[] options

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: moveit_simple_grasps/GraspGeneratorOptions
uint8 grasp_axis
uint8 GRASP_AXIS_X = 0
uint8 GRASP_AXIS_Y = 1
uint8 GRASP_AXIS_Z = 2

uint8 grasp_direction
uint8 GRASP_DIRECTION_UP = 0
uint8 GRASP_DIRECTION_DOWN = 1

uint8 grasp_rotation
uint8 GRASP_ROTATION_HALF = 0
uint8 GRASP_ROTATION_FULL = 1
"""
  __slots__ = ['pose','width','options']
  _slot_types = ['geometry_msgs/Pose','float64','moveit_simple_grasps/GraspGeneratorOptions[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pose,width,options

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GenerateGraspsGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.width is None:
        self.width = 0.
      if self.options is None:
        self.options = []
    else:
      self.pose = geometry_msgs.msg.Pose()
      self.width = 0.
      self.options = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_8d().pack(_x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.width))
      length = len(self.options)
      buff.write(_struct_I.pack(length))
      for val1 in self.options:
        _x = val1
        buff.write(_get_struct_3B().pack(_x.grasp_axis, _x.grasp_direction, _x.grasp_rotation))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.options is None:
        self.options = None
      end = 0
      _x = self
      start = end
      end += 64
      (_x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.width,) = _get_struct_8d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.options = []
      for i in range(0, length):
        val1 = moveit_simple_grasps.msg.GraspGeneratorOptions()
        _x = val1
        start = end
        end += 3
        (_x.grasp_axis, _x.grasp_direction, _x.grasp_rotation,) = _get_struct_3B().unpack(str[start:end])
        self.options.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_8d().pack(_x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.width))
      length = len(self.options)
      buff.write(_struct_I.pack(length))
      for val1 in self.options:
        _x = val1
        buff.write(_get_struct_3B().pack(_x.grasp_axis, _x.grasp_direction, _x.grasp_rotation))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.options is None:
        self.options = None
      end = 0
      _x = self
      start = end
      end += 64
      (_x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.width,) = _get_struct_8d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.options = []
      for i in range(0, length):
        val1 = moveit_simple_grasps.msg.GraspGeneratorOptions()
        _x = val1
        start = end
        end += 3
        (_x.grasp_axis, _x.grasp_direction, _x.grasp_rotation,) = _get_struct_3B().unpack(str[start:end])
        self.options.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3B = None
def _get_struct_3B():
    global _struct_3B
    if _struct_3B is None:
        _struct_3B = struct.Struct("<3B")
    return _struct_3B
_struct_8d = None
def _get_struct_8d():
    global _struct_8d
    if _struct_8d is None:
        _struct_8d = struct.Struct("<8d")
    return _struct_8d
