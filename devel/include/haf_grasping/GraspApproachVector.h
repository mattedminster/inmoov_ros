// Generated by gencpp from file haf_grasping/GraspApproachVector.msg
// DO NOT EDIT!


#ifndef HAF_GRASPING_MESSAGE_GRASPAPPROACHVECTOR_H
#define HAF_GRASPING_MESSAGE_GRASPAPPROACHVECTOR_H

#include <ros/service_traits.h>


#include <haf_grasping/GraspApproachVectorRequest.h>
#include <haf_grasping/GraspApproachVectorResponse.h>


namespace haf_grasping
{

struct GraspApproachVector
{

typedef GraspApproachVectorRequest Request;
typedef GraspApproachVectorResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GraspApproachVector
} // namespace haf_grasping


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::haf_grasping::GraspApproachVector > {
  static const char* value()
  {
    return "bf44c4c96f0e3a32358147d8b8f8d0e4";
  }

  static const char* value(const ::haf_grasping::GraspApproachVector&) { return value(); }
};

template<>
struct DataType< ::haf_grasping::GraspApproachVector > {
  static const char* value()
  {
    return "haf_grasping/GraspApproachVector";
  }

  static const char* value(const ::haf_grasping::GraspApproachVector&) { return value(); }
};


// service_traits::MD5Sum< ::haf_grasping::GraspApproachVectorRequest> should match 
// service_traits::MD5Sum< ::haf_grasping::GraspApproachVector > 
template<>
struct MD5Sum< ::haf_grasping::GraspApproachVectorRequest>
{
  static const char* value()
  {
    return MD5Sum< ::haf_grasping::GraspApproachVector >::value();
  }
  static const char* value(const ::haf_grasping::GraspApproachVectorRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::haf_grasping::GraspApproachVectorRequest> should match 
// service_traits::DataType< ::haf_grasping::GraspApproachVector > 
template<>
struct DataType< ::haf_grasping::GraspApproachVectorRequest>
{
  static const char* value()
  {
    return DataType< ::haf_grasping::GraspApproachVector >::value();
  }
  static const char* value(const ::haf_grasping::GraspApproachVectorRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::haf_grasping::GraspApproachVectorResponse> should match 
// service_traits::MD5Sum< ::haf_grasping::GraspApproachVector > 
template<>
struct MD5Sum< ::haf_grasping::GraspApproachVectorResponse>
{
  static const char* value()
  {
    return MD5Sum< ::haf_grasping::GraspApproachVector >::value();
  }
  static const char* value(const ::haf_grasping::GraspApproachVectorResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::haf_grasping::GraspApproachVectorResponse> should match 
// service_traits::DataType< ::haf_grasping::GraspApproachVector > 
template<>
struct DataType< ::haf_grasping::GraspApproachVectorResponse>
{
  static const char* value()
  {
    return DataType< ::haf_grasping::GraspApproachVector >::value();
  }
  static const char* value(const ::haf_grasping::GraspApproachVectorResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HAF_GRASPING_MESSAGE_GRASPAPPROACHVECTOR_H
