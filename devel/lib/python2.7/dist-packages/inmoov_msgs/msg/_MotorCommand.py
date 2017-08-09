# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from inmoov_msgs/MotorCommand.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MotorCommand(genpy.Message):
  _md5sum = "a3be74fad61fe1fa6f980c41406a4b63"
  _type = "inmoov_msgs/MotorCommand"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32   pin                      # motor id
uint8   parameter               # parameter
float32 value			# value

"""
  __slots__ = ['pin','parameter','value']
  _slot_types = ['int32','uint8','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pin,parameter,value

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MotorCommand, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.pin is None:
        self.pin = 0
      if self.parameter is None:
        self.parameter = 0
      if self.value is None:
        self.value = 0.
    else:
      self.pin = 0
      self.parameter = 0
      self.value = 0.

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
      buff.write(_get_struct_iBf().pack(_x.pin, _x.parameter, _x.value))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 9
      (_x.pin, _x.parameter, _x.value,) = _get_struct_iBf().unpack(str[start:end])
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
      buff.write(_get_struct_iBf().pack(_x.pin, _x.parameter, _x.value))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 9
      (_x.pin, _x.parameter, _x.value,) = _get_struct_iBf().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_iBf = None
def _get_struct_iBf():
    global _struct_iBf
    if _struct_iBf is None:
        _struct_iBf = struct.Struct("<iBf")
    return _struct_iBf
