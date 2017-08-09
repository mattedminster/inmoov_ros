# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from image_recognition_msgs/PersonDetection.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import image_recognition_msgs.msg

class PersonDetection(genpy.Message):
  _md5sum = "a03d875ebc0d32e49941fcc1680cca05"
  _type = "image_recognition_msgs/PersonDetection"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """BodypartDetection nose
BodypartDetection neck
BodypartDetection right_shoulder
BodypartDetection right_elbow
BodypartDetection right_wrist
BodypartDetection left_shoulder
BodypartDetection left_elbow
BodypartDetection left_wrist
BodypartDetection right_hip
BodypartDetection right_knee
BodypartDetection right_ankle
BodypartDetection left_hip
BodypartDetection left_knee
BodypartDetection left_ankle
BodypartDetection right_eye
BodypartDetection left_eye
BodypartDetection right_ear
BodypartDetection left_ear
BodypartDetection chest
================================================================================
MSG: image_recognition_msgs/BodypartDetection
uint32 x
uint32 y
float32 confidence"""
  __slots__ = ['nose','neck','right_shoulder','right_elbow','right_wrist','left_shoulder','left_elbow','left_wrist','right_hip','right_knee','right_ankle','left_hip','left_knee','left_ankle','right_eye','left_eye','right_ear','left_ear','chest']
  _slot_types = ['image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection','image_recognition_msgs/BodypartDetection']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       nose,neck,right_shoulder,right_elbow,right_wrist,left_shoulder,left_elbow,left_wrist,right_hip,right_knee,right_ankle,left_hip,left_knee,left_ankle,right_eye,left_eye,right_ear,left_ear,chest

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PersonDetection, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.nose is None:
        self.nose = image_recognition_msgs.msg.BodypartDetection()
      if self.neck is None:
        self.neck = image_recognition_msgs.msg.BodypartDetection()
      if self.right_shoulder is None:
        self.right_shoulder = image_recognition_msgs.msg.BodypartDetection()
      if self.right_elbow is None:
        self.right_elbow = image_recognition_msgs.msg.BodypartDetection()
      if self.right_wrist is None:
        self.right_wrist = image_recognition_msgs.msg.BodypartDetection()
      if self.left_shoulder is None:
        self.left_shoulder = image_recognition_msgs.msg.BodypartDetection()
      if self.left_elbow is None:
        self.left_elbow = image_recognition_msgs.msg.BodypartDetection()
      if self.left_wrist is None:
        self.left_wrist = image_recognition_msgs.msg.BodypartDetection()
      if self.right_hip is None:
        self.right_hip = image_recognition_msgs.msg.BodypartDetection()
      if self.right_knee is None:
        self.right_knee = image_recognition_msgs.msg.BodypartDetection()
      if self.right_ankle is None:
        self.right_ankle = image_recognition_msgs.msg.BodypartDetection()
      if self.left_hip is None:
        self.left_hip = image_recognition_msgs.msg.BodypartDetection()
      if self.left_knee is None:
        self.left_knee = image_recognition_msgs.msg.BodypartDetection()
      if self.left_ankle is None:
        self.left_ankle = image_recognition_msgs.msg.BodypartDetection()
      if self.right_eye is None:
        self.right_eye = image_recognition_msgs.msg.BodypartDetection()
      if self.left_eye is None:
        self.left_eye = image_recognition_msgs.msg.BodypartDetection()
      if self.right_ear is None:
        self.right_ear = image_recognition_msgs.msg.BodypartDetection()
      if self.left_ear is None:
        self.left_ear = image_recognition_msgs.msg.BodypartDetection()
      if self.chest is None:
        self.chest = image_recognition_msgs.msg.BodypartDetection()
    else:
      self.nose = image_recognition_msgs.msg.BodypartDetection()
      self.neck = image_recognition_msgs.msg.BodypartDetection()
      self.right_shoulder = image_recognition_msgs.msg.BodypartDetection()
      self.right_elbow = image_recognition_msgs.msg.BodypartDetection()
      self.right_wrist = image_recognition_msgs.msg.BodypartDetection()
      self.left_shoulder = image_recognition_msgs.msg.BodypartDetection()
      self.left_elbow = image_recognition_msgs.msg.BodypartDetection()
      self.left_wrist = image_recognition_msgs.msg.BodypartDetection()
      self.right_hip = image_recognition_msgs.msg.BodypartDetection()
      self.right_knee = image_recognition_msgs.msg.BodypartDetection()
      self.right_ankle = image_recognition_msgs.msg.BodypartDetection()
      self.left_hip = image_recognition_msgs.msg.BodypartDetection()
      self.left_knee = image_recognition_msgs.msg.BodypartDetection()
      self.left_ankle = image_recognition_msgs.msg.BodypartDetection()
      self.right_eye = image_recognition_msgs.msg.BodypartDetection()
      self.left_eye = image_recognition_msgs.msg.BodypartDetection()
      self.right_ear = image_recognition_msgs.msg.BodypartDetection()
      self.left_ear = image_recognition_msgs.msg.BodypartDetection()
      self.chest = image_recognition_msgs.msg.BodypartDetection()

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
      buff.write(_get_struct_2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If().pack(_x.nose.x, _x.nose.y, _x.nose.confidence, _x.neck.x, _x.neck.y, _x.neck.confidence, _x.right_shoulder.x, _x.right_shoulder.y, _x.right_shoulder.confidence, _x.right_elbow.x, _x.right_elbow.y, _x.right_elbow.confidence, _x.right_wrist.x, _x.right_wrist.y, _x.right_wrist.confidence, _x.left_shoulder.x, _x.left_shoulder.y, _x.left_shoulder.confidence, _x.left_elbow.x, _x.left_elbow.y, _x.left_elbow.confidence, _x.left_wrist.x, _x.left_wrist.y, _x.left_wrist.confidence, _x.right_hip.x, _x.right_hip.y, _x.right_hip.confidence, _x.right_knee.x, _x.right_knee.y, _x.right_knee.confidence, _x.right_ankle.x, _x.right_ankle.y, _x.right_ankle.confidence, _x.left_hip.x, _x.left_hip.y, _x.left_hip.confidence, _x.left_knee.x, _x.left_knee.y, _x.left_knee.confidence, _x.left_ankle.x, _x.left_ankle.y, _x.left_ankle.confidence, _x.right_eye.x, _x.right_eye.y, _x.right_eye.confidence, _x.left_eye.x, _x.left_eye.y, _x.left_eye.confidence, _x.right_ear.x, _x.right_ear.y, _x.right_ear.confidence, _x.left_ear.x, _x.left_ear.y, _x.left_ear.confidence, _x.chest.x, _x.chest.y, _x.chest.confidence))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.nose is None:
        self.nose = image_recognition_msgs.msg.BodypartDetection()
      if self.neck is None:
        self.neck = image_recognition_msgs.msg.BodypartDetection()
      if self.right_shoulder is None:
        self.right_shoulder = image_recognition_msgs.msg.BodypartDetection()
      if self.right_elbow is None:
        self.right_elbow = image_recognition_msgs.msg.BodypartDetection()
      if self.right_wrist is None:
        self.right_wrist = image_recognition_msgs.msg.BodypartDetection()
      if self.left_shoulder is None:
        self.left_shoulder = image_recognition_msgs.msg.BodypartDetection()
      if self.left_elbow is None:
        self.left_elbow = image_recognition_msgs.msg.BodypartDetection()
      if self.left_wrist is None:
        self.left_wrist = image_recognition_msgs.msg.BodypartDetection()
      if self.right_hip is None:
        self.right_hip = image_recognition_msgs.msg.BodypartDetection()
      if self.right_knee is None:
        self.right_knee = image_recognition_msgs.msg.BodypartDetection()
      if self.right_ankle is None:
        self.right_ankle = image_recognition_msgs.msg.BodypartDetection()
      if self.left_hip is None:
        self.left_hip = image_recognition_msgs.msg.BodypartDetection()
      if self.left_knee is None:
        self.left_knee = image_recognition_msgs.msg.BodypartDetection()
      if self.left_ankle is None:
        self.left_ankle = image_recognition_msgs.msg.BodypartDetection()
      if self.right_eye is None:
        self.right_eye = image_recognition_msgs.msg.BodypartDetection()
      if self.left_eye is None:
        self.left_eye = image_recognition_msgs.msg.BodypartDetection()
      if self.right_ear is None:
        self.right_ear = image_recognition_msgs.msg.BodypartDetection()
      if self.left_ear is None:
        self.left_ear = image_recognition_msgs.msg.BodypartDetection()
      if self.chest is None:
        self.chest = image_recognition_msgs.msg.BodypartDetection()
      end = 0
      _x = self
      start = end
      end += 228
      (_x.nose.x, _x.nose.y, _x.nose.confidence, _x.neck.x, _x.neck.y, _x.neck.confidence, _x.right_shoulder.x, _x.right_shoulder.y, _x.right_shoulder.confidence, _x.right_elbow.x, _x.right_elbow.y, _x.right_elbow.confidence, _x.right_wrist.x, _x.right_wrist.y, _x.right_wrist.confidence, _x.left_shoulder.x, _x.left_shoulder.y, _x.left_shoulder.confidence, _x.left_elbow.x, _x.left_elbow.y, _x.left_elbow.confidence, _x.left_wrist.x, _x.left_wrist.y, _x.left_wrist.confidence, _x.right_hip.x, _x.right_hip.y, _x.right_hip.confidence, _x.right_knee.x, _x.right_knee.y, _x.right_knee.confidence, _x.right_ankle.x, _x.right_ankle.y, _x.right_ankle.confidence, _x.left_hip.x, _x.left_hip.y, _x.left_hip.confidence, _x.left_knee.x, _x.left_knee.y, _x.left_knee.confidence, _x.left_ankle.x, _x.left_ankle.y, _x.left_ankle.confidence, _x.right_eye.x, _x.right_eye.y, _x.right_eye.confidence, _x.left_eye.x, _x.left_eye.y, _x.left_eye.confidence, _x.right_ear.x, _x.right_ear.y, _x.right_ear.confidence, _x.left_ear.x, _x.left_ear.y, _x.left_ear.confidence, _x.chest.x, _x.chest.y, _x.chest.confidence,) = _get_struct_2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If().unpack(str[start:end])
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
      buff.write(_get_struct_2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If().pack(_x.nose.x, _x.nose.y, _x.nose.confidence, _x.neck.x, _x.neck.y, _x.neck.confidence, _x.right_shoulder.x, _x.right_shoulder.y, _x.right_shoulder.confidence, _x.right_elbow.x, _x.right_elbow.y, _x.right_elbow.confidence, _x.right_wrist.x, _x.right_wrist.y, _x.right_wrist.confidence, _x.left_shoulder.x, _x.left_shoulder.y, _x.left_shoulder.confidence, _x.left_elbow.x, _x.left_elbow.y, _x.left_elbow.confidence, _x.left_wrist.x, _x.left_wrist.y, _x.left_wrist.confidence, _x.right_hip.x, _x.right_hip.y, _x.right_hip.confidence, _x.right_knee.x, _x.right_knee.y, _x.right_knee.confidence, _x.right_ankle.x, _x.right_ankle.y, _x.right_ankle.confidence, _x.left_hip.x, _x.left_hip.y, _x.left_hip.confidence, _x.left_knee.x, _x.left_knee.y, _x.left_knee.confidence, _x.left_ankle.x, _x.left_ankle.y, _x.left_ankle.confidence, _x.right_eye.x, _x.right_eye.y, _x.right_eye.confidence, _x.left_eye.x, _x.left_eye.y, _x.left_eye.confidence, _x.right_ear.x, _x.right_ear.y, _x.right_ear.confidence, _x.left_ear.x, _x.left_ear.y, _x.left_ear.confidence, _x.chest.x, _x.chest.y, _x.chest.confidence))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.nose is None:
        self.nose = image_recognition_msgs.msg.BodypartDetection()
      if self.neck is None:
        self.neck = image_recognition_msgs.msg.BodypartDetection()
      if self.right_shoulder is None:
        self.right_shoulder = image_recognition_msgs.msg.BodypartDetection()
      if self.right_elbow is None:
        self.right_elbow = image_recognition_msgs.msg.BodypartDetection()
      if self.right_wrist is None:
        self.right_wrist = image_recognition_msgs.msg.BodypartDetection()
      if self.left_shoulder is None:
        self.left_shoulder = image_recognition_msgs.msg.BodypartDetection()
      if self.left_elbow is None:
        self.left_elbow = image_recognition_msgs.msg.BodypartDetection()
      if self.left_wrist is None:
        self.left_wrist = image_recognition_msgs.msg.BodypartDetection()
      if self.right_hip is None:
        self.right_hip = image_recognition_msgs.msg.BodypartDetection()
      if self.right_knee is None:
        self.right_knee = image_recognition_msgs.msg.BodypartDetection()
      if self.right_ankle is None:
        self.right_ankle = image_recognition_msgs.msg.BodypartDetection()
      if self.left_hip is None:
        self.left_hip = image_recognition_msgs.msg.BodypartDetection()
      if self.left_knee is None:
        self.left_knee = image_recognition_msgs.msg.BodypartDetection()
      if self.left_ankle is None:
        self.left_ankle = image_recognition_msgs.msg.BodypartDetection()
      if self.right_eye is None:
        self.right_eye = image_recognition_msgs.msg.BodypartDetection()
      if self.left_eye is None:
        self.left_eye = image_recognition_msgs.msg.BodypartDetection()
      if self.right_ear is None:
        self.right_ear = image_recognition_msgs.msg.BodypartDetection()
      if self.left_ear is None:
        self.left_ear = image_recognition_msgs.msg.BodypartDetection()
      if self.chest is None:
        self.chest = image_recognition_msgs.msg.BodypartDetection()
      end = 0
      _x = self
      start = end
      end += 228
      (_x.nose.x, _x.nose.y, _x.nose.confidence, _x.neck.x, _x.neck.y, _x.neck.confidence, _x.right_shoulder.x, _x.right_shoulder.y, _x.right_shoulder.confidence, _x.right_elbow.x, _x.right_elbow.y, _x.right_elbow.confidence, _x.right_wrist.x, _x.right_wrist.y, _x.right_wrist.confidence, _x.left_shoulder.x, _x.left_shoulder.y, _x.left_shoulder.confidence, _x.left_elbow.x, _x.left_elbow.y, _x.left_elbow.confidence, _x.left_wrist.x, _x.left_wrist.y, _x.left_wrist.confidence, _x.right_hip.x, _x.right_hip.y, _x.right_hip.confidence, _x.right_knee.x, _x.right_knee.y, _x.right_knee.confidence, _x.right_ankle.x, _x.right_ankle.y, _x.right_ankle.confidence, _x.left_hip.x, _x.left_hip.y, _x.left_hip.confidence, _x.left_knee.x, _x.left_knee.y, _x.left_knee.confidence, _x.left_ankle.x, _x.left_ankle.y, _x.left_ankle.confidence, _x.right_eye.x, _x.right_eye.y, _x.right_eye.confidence, _x.left_eye.x, _x.left_eye.y, _x.left_eye.confidence, _x.right_ear.x, _x.right_ear.y, _x.right_ear.confidence, _x.left_ear.x, _x.left_ear.y, _x.left_ear.confidence, _x.chest.x, _x.chest.y, _x.chest.confidence,) = _get_struct_2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If = None
def _get_struct_2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If():
    global _struct_2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If
    if _struct_2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If is None:
        _struct_2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If = struct.Struct("<2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If")
    return _struct_2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If2If
