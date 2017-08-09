// Generated by gencpp from file inmoov_msgs/NeoPixelSetBrightness.msg
// DO NOT EDIT!


#ifndef INMOOV_MSGS_MESSAGE_NEOPIXELSETBRIGHTNESS_H
#define INMOOV_MSGS_MESSAGE_NEOPIXELSETBRIGHTNESS_H

#include <ros/service_traits.h>


#include <inmoov_msgs/NeoPixelSetBrightnessRequest.h>
#include <inmoov_msgs/NeoPixelSetBrightnessResponse.h>


namespace inmoov_msgs
{

struct NeoPixelSetBrightness
{

typedef NeoPixelSetBrightnessRequest Request;
typedef NeoPixelSetBrightnessResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct NeoPixelSetBrightness
} // namespace inmoov_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::inmoov_msgs::NeoPixelSetBrightness > {
  static const char* value()
  {
    return "6dac20c177c42b22ca026285392803c8";
  }

  static const char* value(const ::inmoov_msgs::NeoPixelSetBrightness&) { return value(); }
};

template<>
struct DataType< ::inmoov_msgs::NeoPixelSetBrightness > {
  static const char* value()
  {
    return "inmoov_msgs/NeoPixelSetBrightness";
  }

  static const char* value(const ::inmoov_msgs::NeoPixelSetBrightness&) { return value(); }
};


// service_traits::MD5Sum< ::inmoov_msgs::NeoPixelSetBrightnessRequest> should match 
// service_traits::MD5Sum< ::inmoov_msgs::NeoPixelSetBrightness > 
template<>
struct MD5Sum< ::inmoov_msgs::NeoPixelSetBrightnessRequest>
{
  static const char* value()
  {
    return MD5Sum< ::inmoov_msgs::NeoPixelSetBrightness >::value();
  }
  static const char* value(const ::inmoov_msgs::NeoPixelSetBrightnessRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::inmoov_msgs::NeoPixelSetBrightnessRequest> should match 
// service_traits::DataType< ::inmoov_msgs::NeoPixelSetBrightness > 
template<>
struct DataType< ::inmoov_msgs::NeoPixelSetBrightnessRequest>
{
  static const char* value()
  {
    return DataType< ::inmoov_msgs::NeoPixelSetBrightness >::value();
  }
  static const char* value(const ::inmoov_msgs::NeoPixelSetBrightnessRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::inmoov_msgs::NeoPixelSetBrightnessResponse> should match 
// service_traits::MD5Sum< ::inmoov_msgs::NeoPixelSetBrightness > 
template<>
struct MD5Sum< ::inmoov_msgs::NeoPixelSetBrightnessResponse>
{
  static const char* value()
  {
    return MD5Sum< ::inmoov_msgs::NeoPixelSetBrightness >::value();
  }
  static const char* value(const ::inmoov_msgs::NeoPixelSetBrightnessResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::inmoov_msgs::NeoPixelSetBrightnessResponse> should match 
// service_traits::DataType< ::inmoov_msgs::NeoPixelSetBrightness > 
template<>
struct DataType< ::inmoov_msgs::NeoPixelSetBrightnessResponse>
{
  static const char* value()
  {
    return DataType< ::inmoov_msgs::NeoPixelSetBrightness >::value();
  }
  static const char* value(const ::inmoov_msgs::NeoPixelSetBrightnessResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // INMOOV_MSGS_MESSAGE_NEOPIXELSETBRIGHTNESS_H