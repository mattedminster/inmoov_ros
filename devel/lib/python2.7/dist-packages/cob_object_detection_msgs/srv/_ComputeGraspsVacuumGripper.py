# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cob_object_detection_msgs/ComputeGraspsVacuumGripperRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import cob_object_detection_msgs.msg
import sensor_msgs.msg
import std_msgs.msg

class ComputeGraspsVacuumGripperRequest(genpy.Message):
  _md5sum = "cf22e5a7f83f0b75d5ad474571594809"
  _type = "cob_object_detection_msgs/ComputeGraspsVacuumGripperRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """

cob_object_detection_msgs/Detection object


string external_reference_frame_id

================================================================================
MSG: cob_object_detection_msgs/Detection
Header header
string label
int32 id
string detector
float32 score
Mask mask
geometry_msgs/PoseStamped pose
geometry_msgs/Point bounding_box_lwh

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: cob_object_detection_msgs/Mask
# this message is used to mark where an object is present in an image
# this can be done either by a roi region on the image (less precise) or a mask (more precise)

Rect roi

# in the case when mask is used, 'roi' specifies the image region and 'mask'
# (which should be of the same size) a binary mask in that region
sensor_msgs/Image mask

# in the case there is 3D data available, 'indices' are used to index the 
# part of the point cloud representing the object
#pcl/PointIndices indices

================================================================================
MSG: cob_object_detection_msgs/Rect
int32 x
int32 y
int32 width
int32 height

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
"""
  __slots__ = ['object','external_reference_frame_id']
  _slot_types = ['cob_object_detection_msgs/Detection','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       object,external_reference_frame_id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ComputeGraspsVacuumGripperRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.object is None:
        self.object = cob_object_detection_msgs.msg.Detection()
      if self.external_reference_frame_id is None:
        self.external_reference_frame_id = ''
    else:
      self.object = cob_object_detection_msgs.msg.Detection()
      self.external_reference_frame_id = ''

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
      buff.write(_get_struct_3I().pack(_x.object.header.seq, _x.object.header.stamp.secs, _x.object.header.stamp.nsecs))
      _x = self.object.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.object.label
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.object.id))
      _x = self.object.detector
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_f4i3I().pack(_x.object.score, _x.object.mask.roi.x, _x.object.mask.roi.y, _x.object.mask.roi.width, _x.object.mask.roi.height, _x.object.mask.mask.header.seq, _x.object.mask.mask.header.stamp.secs, _x.object.mask.mask.header.stamp.nsecs))
      _x = self.object.mask.mask.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.object.mask.mask.height, _x.object.mask.mask.width))
      _x = self.object.mask.mask.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.object.mask.mask.is_bigendian, _x.object.mask.mask.step))
      _x = self.object.mask.mask.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.object.pose.header.seq, _x.object.pose.header.stamp.secs, _x.object.pose.header.stamp.nsecs))
      _x = self.object.pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_10d().pack(_x.object.pose.pose.position.x, _x.object.pose.pose.position.y, _x.object.pose.pose.position.z, _x.object.pose.pose.orientation.x, _x.object.pose.pose.orientation.y, _x.object.pose.pose.orientation.z, _x.object.pose.pose.orientation.w, _x.object.bounding_box_lwh.x, _x.object.bounding_box_lwh.y, _x.object.bounding_box_lwh.z))
      _x = self.external_reference_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.object is None:
        self.object = cob_object_detection_msgs.msg.Detection()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.object.header.seq, _x.object.header.stamp.secs, _x.object.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.object.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.object.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.object.label = str[start:end].decode('utf-8')
      else:
        self.object.label = str[start:end]
      start = end
      end += 4
      (self.object.id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.object.detector = str[start:end].decode('utf-8')
      else:
        self.object.detector = str[start:end]
      _x = self
      start = end
      end += 32
      (_x.object.score, _x.object.mask.roi.x, _x.object.mask.roi.y, _x.object.mask.roi.width, _x.object.mask.roi.height, _x.object.mask.mask.header.seq, _x.object.mask.mask.header.stamp.secs, _x.object.mask.mask.header.stamp.nsecs,) = _get_struct_f4i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.object.mask.mask.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.object.mask.mask.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.object.mask.mask.height, _x.object.mask.mask.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.object.mask.mask.encoding = str[start:end].decode('utf-8')
      else:
        self.object.mask.mask.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.object.mask.mask.is_bigendian, _x.object.mask.mask.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.object.mask.mask.data = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.object.pose.header.seq, _x.object.pose.header.stamp.secs, _x.object.pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.object.pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.object.pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 80
      (_x.object.pose.pose.position.x, _x.object.pose.pose.position.y, _x.object.pose.pose.position.z, _x.object.pose.pose.orientation.x, _x.object.pose.pose.orientation.y, _x.object.pose.pose.orientation.z, _x.object.pose.pose.orientation.w, _x.object.bounding_box_lwh.x, _x.object.bounding_box_lwh.y, _x.object.bounding_box_lwh.z,) = _get_struct_10d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.external_reference_frame_id = str[start:end].decode('utf-8')
      else:
        self.external_reference_frame_id = str[start:end]
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
      buff.write(_get_struct_3I().pack(_x.object.header.seq, _x.object.header.stamp.secs, _x.object.header.stamp.nsecs))
      _x = self.object.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.object.label
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.object.id))
      _x = self.object.detector
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_f4i3I().pack(_x.object.score, _x.object.mask.roi.x, _x.object.mask.roi.y, _x.object.mask.roi.width, _x.object.mask.roi.height, _x.object.mask.mask.header.seq, _x.object.mask.mask.header.stamp.secs, _x.object.mask.mask.header.stamp.nsecs))
      _x = self.object.mask.mask.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.object.mask.mask.height, _x.object.mask.mask.width))
      _x = self.object.mask.mask.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.object.mask.mask.is_bigendian, _x.object.mask.mask.step))
      _x = self.object.mask.mask.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.object.pose.header.seq, _x.object.pose.header.stamp.secs, _x.object.pose.header.stamp.nsecs))
      _x = self.object.pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_10d().pack(_x.object.pose.pose.position.x, _x.object.pose.pose.position.y, _x.object.pose.pose.position.z, _x.object.pose.pose.orientation.x, _x.object.pose.pose.orientation.y, _x.object.pose.pose.orientation.z, _x.object.pose.pose.orientation.w, _x.object.bounding_box_lwh.x, _x.object.bounding_box_lwh.y, _x.object.bounding_box_lwh.z))
      _x = self.external_reference_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.object is None:
        self.object = cob_object_detection_msgs.msg.Detection()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.object.header.seq, _x.object.header.stamp.secs, _x.object.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.object.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.object.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.object.label = str[start:end].decode('utf-8')
      else:
        self.object.label = str[start:end]
      start = end
      end += 4
      (self.object.id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.object.detector = str[start:end].decode('utf-8')
      else:
        self.object.detector = str[start:end]
      _x = self
      start = end
      end += 32
      (_x.object.score, _x.object.mask.roi.x, _x.object.mask.roi.y, _x.object.mask.roi.width, _x.object.mask.roi.height, _x.object.mask.mask.header.seq, _x.object.mask.mask.header.stamp.secs, _x.object.mask.mask.header.stamp.nsecs,) = _get_struct_f4i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.object.mask.mask.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.object.mask.mask.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.object.mask.mask.height, _x.object.mask.mask.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.object.mask.mask.encoding = str[start:end].decode('utf-8')
      else:
        self.object.mask.mask.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.object.mask.mask.is_bigendian, _x.object.mask.mask.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.object.mask.mask.data = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.object.pose.header.seq, _x.object.pose.header.stamp.secs, _x.object.pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.object.pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.object.pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 80
      (_x.object.pose.pose.position.x, _x.object.pose.pose.position.y, _x.object.pose.pose.position.z, _x.object.pose.pose.orientation.x, _x.object.pose.pose.orientation.y, _x.object.pose.pose.orientation.z, _x.object.pose.pose.orientation.w, _x.object.bounding_box_lwh.x, _x.object.bounding_box_lwh.y, _x.object.bounding_box_lwh.z,) = _get_struct_10d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.external_reference_frame_id = str[start:end].decode('utf-8')
      else:
        self.external_reference_frame_id = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_f4i3I = None
def _get_struct_f4i3I():
    global _struct_f4i3I
    if _struct_f4i3I is None:
        _struct_f4i3I = struct.Struct("<f4i3I")
    return _struct_f4i3I
_struct_BI = None
def _get_struct_BI():
    global _struct_BI
    if _struct_BI is None:
        _struct_BI = struct.Struct("<BI")
    return _struct_BI
_struct_10d = None
def _get_struct_10d():
    global _struct_10d
    if _struct_10d is None:
        _struct_10d = struct.Struct("<10d")
    return _struct_10d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cob_object_detection_msgs/ComputeGraspsVacuumGripperResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class ComputeGraspsVacuumGripperResponse(genpy.Message):
  _md5sum = "08f27c2314d089ff20a5f4b1c7ef7c00"
  _type = "cob_object_detection_msgs/ComputeGraspsVacuumGripperResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
geometry_msgs/PoseStamped[] grasp_points

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

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
"""
  __slots__ = ['grasp_points']
  _slot_types = ['geometry_msgs/PoseStamped[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       grasp_points

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ComputeGraspsVacuumGripperResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.grasp_points is None:
        self.grasp_points = []
    else:
      self.grasp_points = []

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
      length = len(self.grasp_points)
      buff.write(_struct_I.pack(length))
      for val1 in self.grasp_points:
        _v1 = val1.header
        buff.write(_get_struct_I().pack(_v1.seq))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v3 = val1.pose
        _v4 = _v3.position
        _x = _v4
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v5 = _v3.orientation
        _x = _v5
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.grasp_points is None:
        self.grasp_points = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.grasp_points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.PoseStamped()
        _v6 = val1.header
        start = end
        end += 4
        (_v6.seq,) = _get_struct_I().unpack(str[start:end])
        _v7 = _v6.stamp
        _x = _v7
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v6.frame_id = str[start:end].decode('utf-8')
        else:
          _v6.frame_id = str[start:end]
        _v8 = val1.pose
        _v9 = _v8.position
        _x = _v9
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v10 = _v8.orientation
        _x = _v10
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.grasp_points.append(val1)
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
      length = len(self.grasp_points)
      buff.write(_struct_I.pack(length))
      for val1 in self.grasp_points:
        _v11 = val1.header
        buff.write(_get_struct_I().pack(_v11.seq))
        _v12 = _v11.stamp
        _x = _v12
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v11.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v13 = val1.pose
        _v14 = _v13.position
        _x = _v14
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v15 = _v13.orientation
        _x = _v15
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.grasp_points is None:
        self.grasp_points = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.grasp_points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.PoseStamped()
        _v16 = val1.header
        start = end
        end += 4
        (_v16.seq,) = _get_struct_I().unpack(str[start:end])
        _v17 = _v16.stamp
        _x = _v17
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v16.frame_id = str[start:end].decode('utf-8')
        else:
          _v16.frame_id = str[start:end]
        _v18 = val1.pose
        _v19 = _v18.position
        _x = _v19
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v20 = _v18.orientation
        _x = _v20
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.grasp_points.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
class ComputeGraspsVacuumGripper(object):
  _type          = 'cob_object_detection_msgs/ComputeGraspsVacuumGripper'
  _md5sum = '5fd579d4198961aee43fea3a6b180c4e'
  _request_class  = ComputeGraspsVacuumGripperRequest
  _response_class = ComputeGraspsVacuumGripperResponse
