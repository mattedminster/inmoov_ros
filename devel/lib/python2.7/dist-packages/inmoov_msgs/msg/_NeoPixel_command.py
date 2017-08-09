# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from inmoov_msgs/NeoPixel_command.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class NeoPixel_command(genpy.Message):
  _md5sum = "101f9c07dca2c5b64e40edc6e84d3160"
  _type = "inmoov_msgs/NeoPixel_command"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string displayType
int32 wait
int32 red
int32 green
int32 blue
int32 red2
int32 green2
int32 blue2



"""
  __slots__ = ['displayType','wait','red','green','blue','red2','green2','blue2']
  _slot_types = ['string','int32','int32','int32','int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       displayType,wait,red,green,blue,red2,green2,blue2

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NeoPixel_command, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.displayType is None:
        self.displayType = ''
      if self.wait is None:
        self.wait = 0
      if self.red is None:
        self.red = 0
      if self.green is None:
        self.green = 0
      if self.blue is None:
        self.blue = 0
      if self.red2 is None:
        self.red2 = 0
      if self.green2 is None:
        self.green2 = 0
      if self.blue2 is None:
        self.blue2 = 0
    else:
      self.displayType = ''
      self.wait = 0
      self.red = 0
      self.green = 0
      self.blue = 0
      self.red2 = 0
      self.green2 = 0
      self.blue2 = 0

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
      _x = self.displayType
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7i().pack(_x.wait, _x.red, _x.green, _x.blue, _x.red2, _x.green2, _x.blue2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.displayType = str[start:end].decode('utf-8')
      else:
        self.displayType = str[start:end]
      _x = self
      start = end
      end += 28
      (_x.wait, _x.red, _x.green, _x.blue, _x.red2, _x.green2, _x.blue2,) = _get_struct_7i().unpack(str[start:end])
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
      _x = self.displayType
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7i().pack(_x.wait, _x.red, _x.green, _x.blue, _x.red2, _x.green2, _x.blue2))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.displayType = str[start:end].decode('utf-8')
      else:
        self.displayType = str[start:end]
      _x = self
      start = end
      end += 28
      (_x.wait, _x.red, _x.green, _x.blue, _x.red2, _x.green2, _x.blue2,) = _get_struct_7i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7i = None
def _get_struct_7i():
    global _struct_7i
    if _struct_7i is None:
        _struct_7i = struct.Struct("<7i")
    return _struct_7i
