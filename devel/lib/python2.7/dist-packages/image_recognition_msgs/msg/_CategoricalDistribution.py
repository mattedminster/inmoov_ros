# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from image_recognition_msgs/CategoricalDistribution.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import image_recognition_msgs.msg

class CategoricalDistribution(genpy.Message):
  _md5sum = "33d3c52e53151a3b74f712a5f80b67be"
  _type = "image_recognition_msgs/CategoricalDistribution"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Categorical distribution; if the probability of an element is below the unknown
# probability, it can be classified as unknown
CategoryProbability[] probabilities
float32 unknown_probability

================================================================================
MSG: image_recognition_msgs/CategoryProbability
# A category (label) with its probability (probablity) that ranges from 0..1
string  label
float32 probability
"""
  __slots__ = ['probabilities','unknown_probability']
  _slot_types = ['image_recognition_msgs/CategoryProbability[]','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       probabilities,unknown_probability

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CategoricalDistribution, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.probabilities is None:
        self.probabilities = []
      if self.unknown_probability is None:
        self.unknown_probability = 0.
    else:
      self.probabilities = []
      self.unknown_probability = 0.

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
      length = len(self.probabilities)
      buff.write(_struct_I.pack(length))
      for val1 in self.probabilities:
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_get_struct_f().pack(val1.probability))
      buff.write(_get_struct_f().pack(self.unknown_probability))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.probabilities is None:
        self.probabilities = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.probabilities = []
      for i in range(0, length):
        val1 = image_recognition_msgs.msg.CategoryProbability()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8')
        else:
          val1.label = str[start:end]
        start = end
        end += 4
        (val1.probability,) = _get_struct_f().unpack(str[start:end])
        self.probabilities.append(val1)
      start = end
      end += 4
      (self.unknown_probability,) = _get_struct_f().unpack(str[start:end])
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
      length = len(self.probabilities)
      buff.write(_struct_I.pack(length))
      for val1 in self.probabilities:
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_get_struct_f().pack(val1.probability))
      buff.write(_get_struct_f().pack(self.unknown_probability))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.probabilities is None:
        self.probabilities = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.probabilities = []
      for i in range(0, length):
        val1 = image_recognition_msgs.msg.CategoryProbability()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8')
        else:
          val1.label = str[start:end]
        start = end
        end += 4
        (val1.probability,) = _get_struct_f().unpack(str[start:end])
        self.probabilities.append(val1)
      start = end
      end += 4
      (self.unknown_probability,) = _get_struct_f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f