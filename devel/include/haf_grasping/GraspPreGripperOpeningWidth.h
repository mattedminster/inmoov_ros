// Generated by gencpp from file haf_grasping/GraspPreGripperOpeningWidth.msg
// DO NOT EDIT!


#ifndef HAF_GRASPING_MESSAGE_GRASPPREGRIPPEROPENINGWIDTH_H
#define HAF_GRASPING_MESSAGE_GRASPPREGRIPPEROPENINGWIDTH_H

#include <ros/service_traits.h>


#include <haf_grasping/GraspPreGripperOpeningWidthRequest.h>
#include <haf_grasping/GraspPreGripperOpeningWidthResponse.h>


namespace haf_grasping
{

struct GraspPreGripperOpeningWidth
{

typedef GraspPreGripperOpeningWidthRequest Request;
typedef GraspPreGripperOpeningWidthResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GraspPreGripperOpeningWidth
} // namespace haf_grasping


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::haf_grasping::GraspPreGripperOpeningWidth > {
  static const char* value()
  {
    return "01233f977ab6b3bc3035826d00041c09";
  }

  static const char* value(const ::haf_grasping::GraspPreGripperOpeningWidth&) { return value(); }
};

template<>
struct DataType< ::haf_grasping::GraspPreGripperOpeningWidth > {
  static const char* value()
  {
    return "haf_grasping/GraspPreGripperOpeningWidth";
  }

  static const char* value(const ::haf_grasping::GraspPreGripperOpeningWidth&) { return value(); }
};


// service_traits::MD5Sum< ::haf_grasping::GraspPreGripperOpeningWidthRequest> should match 
// service_traits::MD5Sum< ::haf_grasping::GraspPreGripperOpeningWidth > 
template<>
struct MD5Sum< ::haf_grasping::GraspPreGripperOpeningWidthRequest>
{
  static const char* value()
  {
    return MD5Sum< ::haf_grasping::GraspPreGripperOpeningWidth >::value();
  }
  static const char* value(const ::haf_grasping::GraspPreGripperOpeningWidthRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::haf_grasping::GraspPreGripperOpeningWidthRequest> should match 
// service_traits::DataType< ::haf_grasping::GraspPreGripperOpeningWidth > 
template<>
struct DataType< ::haf_grasping::GraspPreGripperOpeningWidthRequest>
{
  static const char* value()
  {
    return DataType< ::haf_grasping::GraspPreGripperOpeningWidth >::value();
  }
  static const char* value(const ::haf_grasping::GraspPreGripperOpeningWidthRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::haf_grasping::GraspPreGripperOpeningWidthResponse> should match 
// service_traits::MD5Sum< ::haf_grasping::GraspPreGripperOpeningWidth > 
template<>
struct MD5Sum< ::haf_grasping::GraspPreGripperOpeningWidthResponse>
{
  static const char* value()
  {
    return MD5Sum< ::haf_grasping::GraspPreGripperOpeningWidth >::value();
  }
  static const char* value(const ::haf_grasping::GraspPreGripperOpeningWidthResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::haf_grasping::GraspPreGripperOpeningWidthResponse> should match 
// service_traits::DataType< ::haf_grasping::GraspPreGripperOpeningWidth > 
template<>
struct DataType< ::haf_grasping::GraspPreGripperOpeningWidthResponse>
{
  static const char* value()
  {
    return DataType< ::haf_grasping::GraspPreGripperOpeningWidth >::value();
  }
  static const char* value(const ::haf_grasping::GraspPreGripperOpeningWidthResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HAF_GRASPING_MESSAGE_GRASPPREGRIPPEROPENINGWIDTH_H
