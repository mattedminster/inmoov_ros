# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cob_object_detection_msgs/BaTestEnvironmentRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class BaTestEnvironmentRequest(genpy.Message):
  _md5sum = "65aeb9eaa6cbc248861e82cf7f7464c0"
  _type = "cob_object_detection_msgs/BaTestEnvironmentRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """

int32 number_points
float32 frame_view_number
float32 cone_points_per_plane


float32 limit_error_matching

float32 ba_kernel_param
int32 ba_num_iter
float32 ba_initial_mu
float32 ba_final_mu_factor
float32 ba_tau

float32 angle_sigma_degree
float32 translate_sigma_m
float32 obs_point_sigma_m
float32 world_point_sigma_m

"""
  __slots__ = ['number_points','frame_view_number','cone_points_per_plane','limit_error_matching','ba_kernel_param','ba_num_iter','ba_initial_mu','ba_final_mu_factor','ba_tau','angle_sigma_degree','translate_sigma_m','obs_point_sigma_m','world_point_sigma_m']
  _slot_types = ['int32','float32','float32','float32','float32','int32','float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       number_points,frame_view_number,cone_points_per_plane,limit_error_matching,ba_kernel_param,ba_num_iter,ba_initial_mu,ba_final_mu_factor,ba_tau,angle_sigma_degree,translate_sigma_m,obs_point_sigma_m,world_point_sigma_m

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BaTestEnvironmentRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.number_points is None:
        self.number_points = 0
      if self.frame_view_number is None:
        self.frame_view_number = 0.
      if self.cone_points_per_plane is None:
        self.cone_points_per_plane = 0.
      if self.limit_error_matching is None:
        self.limit_error_matching = 0.
      if self.ba_kernel_param is None:
        self.ba_kernel_param = 0.
      if self.ba_num_iter is None:
        self.ba_num_iter = 0
      if self.ba_initial_mu is None:
        self.ba_initial_mu = 0.
      if self.ba_final_mu_factor is None:
        self.ba_final_mu_factor = 0.
      if self.ba_tau is None:
        self.ba_tau = 0.
      if self.angle_sigma_degree is None:
        self.angle_sigma_degree = 0.
      if self.translate_sigma_m is None:
        self.translate_sigma_m = 0.
      if self.obs_point_sigma_m is None:
        self.obs_point_sigma_m = 0.
      if self.world_point_sigma_m is None:
        self.world_point_sigma_m = 0.
    else:
      self.number_points = 0
      self.frame_view_number = 0.
      self.cone_points_per_plane = 0.
      self.limit_error_matching = 0.
      self.ba_kernel_param = 0.
      self.ba_num_iter = 0
      self.ba_initial_mu = 0.
      self.ba_final_mu_factor = 0.
      self.ba_tau = 0.
      self.angle_sigma_degree = 0.
      self.translate_sigma_m = 0.
      self.obs_point_sigma_m = 0.
      self.world_point_sigma_m = 0.

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
      buff.write(_get_struct_i4fi7f().pack(_x.number_points, _x.frame_view_number, _x.cone_points_per_plane, _x.limit_error_matching, _x.ba_kernel_param, _x.ba_num_iter, _x.ba_initial_mu, _x.ba_final_mu_factor, _x.ba_tau, _x.angle_sigma_degree, _x.translate_sigma_m, _x.obs_point_sigma_m, _x.world_point_sigma_m))
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
      end += 52
      (_x.number_points, _x.frame_view_number, _x.cone_points_per_plane, _x.limit_error_matching, _x.ba_kernel_param, _x.ba_num_iter, _x.ba_initial_mu, _x.ba_final_mu_factor, _x.ba_tau, _x.angle_sigma_degree, _x.translate_sigma_m, _x.obs_point_sigma_m, _x.world_point_sigma_m,) = _get_struct_i4fi7f().unpack(str[start:end])
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
      buff.write(_get_struct_i4fi7f().pack(_x.number_points, _x.frame_view_number, _x.cone_points_per_plane, _x.limit_error_matching, _x.ba_kernel_param, _x.ba_num_iter, _x.ba_initial_mu, _x.ba_final_mu_factor, _x.ba_tau, _x.angle_sigma_degree, _x.translate_sigma_m, _x.obs_point_sigma_m, _x.world_point_sigma_m))
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
      end += 52
      (_x.number_points, _x.frame_view_number, _x.cone_points_per_plane, _x.limit_error_matching, _x.ba_kernel_param, _x.ba_num_iter, _x.ba_initial_mu, _x.ba_final_mu_factor, _x.ba_tau, _x.angle_sigma_degree, _x.translate_sigma_m, _x.obs_point_sigma_m, _x.world_point_sigma_m,) = _get_struct_i4fi7f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i4fi7f = None
def _get_struct_i4fi7f():
    global _struct_i4fi7f
    if _struct_i4fi7f is None:
        _struct_i4fi7f = struct.Struct("<i4fi7f")
    return _struct_i4fi7f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cob_object_detection_msgs/BaTestEnvironmentResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class BaTestEnvironmentResponse(genpy.Message):
  _md5sum = "73db4f13e99b7e554aa13b596abbef41"
  _type = "cob_object_detection_msgs/BaTestEnvironmentResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 mean_error
float32 std_dev
float32 min_error
float32 max_error
float32 runs_count
float32 runs_sum
float32 runs_sum2

float32 time_duration
int32 observations
int32 false_matchings

std_msgs/String result


================================================================================
MSG: std_msgs/String
string data
"""
  __slots__ = ['mean_error','std_dev','min_error','max_error','runs_count','runs_sum','runs_sum2','time_duration','observations','false_matchings','result']
  _slot_types = ['float32','float32','float32','float32','float32','float32','float32','float32','int32','int32','std_msgs/String']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       mean_error,std_dev,min_error,max_error,runs_count,runs_sum,runs_sum2,time_duration,observations,false_matchings,result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BaTestEnvironmentResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.mean_error is None:
        self.mean_error = 0.
      if self.std_dev is None:
        self.std_dev = 0.
      if self.min_error is None:
        self.min_error = 0.
      if self.max_error is None:
        self.max_error = 0.
      if self.runs_count is None:
        self.runs_count = 0.
      if self.runs_sum is None:
        self.runs_sum = 0.
      if self.runs_sum2 is None:
        self.runs_sum2 = 0.
      if self.time_duration is None:
        self.time_duration = 0.
      if self.observations is None:
        self.observations = 0
      if self.false_matchings is None:
        self.false_matchings = 0
      if self.result is None:
        self.result = std_msgs.msg.String()
    else:
      self.mean_error = 0.
      self.std_dev = 0.
      self.min_error = 0.
      self.max_error = 0.
      self.runs_count = 0.
      self.runs_sum = 0.
      self.runs_sum2 = 0.
      self.time_duration = 0.
      self.observations = 0
      self.false_matchings = 0
      self.result = std_msgs.msg.String()

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
      buff.write(_get_struct_8f2i().pack(_x.mean_error, _x.std_dev, _x.min_error, _x.max_error, _x.runs_count, _x.runs_sum, _x.runs_sum2, _x.time_duration, _x.observations, _x.false_matchings))
      _x = self.result.data
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
      if self.result is None:
        self.result = std_msgs.msg.String()
      end = 0
      _x = self
      start = end
      end += 40
      (_x.mean_error, _x.std_dev, _x.min_error, _x.max_error, _x.runs_count, _x.runs_sum, _x.runs_sum2, _x.time_duration, _x.observations, _x.false_matchings,) = _get_struct_8f2i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.result.data = str[start:end].decode('utf-8')
      else:
        self.result.data = str[start:end]
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
      buff.write(_get_struct_8f2i().pack(_x.mean_error, _x.std_dev, _x.min_error, _x.max_error, _x.runs_count, _x.runs_sum, _x.runs_sum2, _x.time_duration, _x.observations, _x.false_matchings))
      _x = self.result.data
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
      if self.result is None:
        self.result = std_msgs.msg.String()
      end = 0
      _x = self
      start = end
      end += 40
      (_x.mean_error, _x.std_dev, _x.min_error, _x.max_error, _x.runs_count, _x.runs_sum, _x.runs_sum2, _x.time_duration, _x.observations, _x.false_matchings,) = _get_struct_8f2i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.result.data = str[start:end].decode('utf-8')
      else:
        self.result.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_8f2i = None
def _get_struct_8f2i():
    global _struct_8f2i
    if _struct_8f2i is None:
        _struct_8f2i = struct.Struct("<8f2i")
    return _struct_8f2i
class BaTestEnvironment(object):
  _type          = 'cob_object_detection_msgs/BaTestEnvironment'
  _md5sum = 'e3abe6b136e84d507dcba74e019ba61e'
  _request_class  = BaTestEnvironmentRequest
  _response_class = BaTestEnvironmentResponse
