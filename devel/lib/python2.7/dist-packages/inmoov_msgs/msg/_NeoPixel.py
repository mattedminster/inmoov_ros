# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from inmoov_msgs/NeoPixel.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class NeoPixel(genpy.Message):
  _md5sum = "d4a1ce762728c83a5b2027e8e116f9ea"
  _type = "inmoov_msgs/NeoPixel"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 pixelNum
int32 pixel_red
int32 pixel_green
int32 pixel_blue
int32 show
"""
  __slots__ = ['pixelNum','pixel_red','pixel_green','pixel_blue','show']
  _slot_types = ['int32','int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pixelNum,pixel_red,pixel_green,pixel_blue,show

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NeoPixel, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.pixelNum is None:
        self.pixelNum = 0
      if self.pixel_red is None:
        self.pixel_red = 0
      if self.pixel_green is None:
        self.pixel_green = 0
      if self.pixel_blue is None:
        self.pixel_blue = 0
      if self.show is None:
        self.show = 0
    else:
      self.pixelNum = 0
      self.pixel_red = 0
      self.pixel_green = 0
      self.pixel_blue = 0
      self.show = 0

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
      buff.write(_get_struct_5i().pack(_x.pixelNum, _x.pixel_red, _x.pixel_green, _x.pixel_blue, _x.show))
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
      end += 20
      (_x.pixelNum, _x.pixel_red, _x.pixel_green, _x.pixel_blue, _x.show,) = _get_struct_5i().unpack(str[start:end])
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
      buff.write(_get_struct_5i().pack(_x.pixelNum, _x.pixel_red, _x.pixel_green, _x.pixel_blue, _x.show))
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
      end += 20
      (_x.pixelNum, _x.pixel_red, _x.pixel_green, _x.pixel_blue, _x.show,) = _get_struct_5i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_5i = None
def _get_struct_5i():
    global _struct_5i
    if _struct_5i is None:
        _struct_5i = struct.Struct("<5i")
    return _struct_5i
