// Generated by gencpp from file inmoov_msgs/MotorParameter.msg
// DO NOT EDIT!


#ifndef INMOOV_MSGS_MESSAGE_MOTORPARAMETER_H
#define INMOOV_MSGS_MESSAGE_MOTORPARAMETER_H

#include <ros/service_traits.h>


#include <inmoov_msgs/MotorParameterRequest.h>
#include <inmoov_msgs/MotorParameterResponse.h>


namespace inmoov_msgs
{

struct MotorParameter
{

typedef MotorParameterRequest Request;
typedef MotorParameterResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MotorParameter
} // namespace inmoov_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::inmoov_msgs::MotorParameter > {
  static const char* value()
  {
    return "5f77ee216d4d41fb39b36b0a0436a53b";
  }

  static const char* value(const ::inmoov_msgs::MotorParameter&) { return value(); }
};

template<>
struct DataType< ::inmoov_msgs::MotorParameter > {
  static const char* value()
  {
    return "inmoov_msgs/MotorParameter";
  }

  static const char* value(const ::inmoov_msgs::MotorParameter&) { return value(); }
};


// service_traits::MD5Sum< ::inmoov_msgs::MotorParameterRequest> should match 
// service_traits::MD5Sum< ::inmoov_msgs::MotorParameter > 
template<>
struct MD5Sum< ::inmoov_msgs::MotorParameterRequest>
{
  static const char* value()
  {
    return MD5Sum< ::inmoov_msgs::MotorParameter >::value();
  }
  static const char* value(const ::inmoov_msgs::MotorParameterRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::inmoov_msgs::MotorParameterRequest> should match 
// service_traits::DataType< ::inmoov_msgs::MotorParameter > 
template<>
struct DataType< ::inmoov_msgs::MotorParameterRequest>
{
  static const char* value()
  {
    return DataType< ::inmoov_msgs::MotorParameter >::value();
  }
  static const char* value(const ::inmoov_msgs::MotorParameterRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::inmoov_msgs::MotorParameterResponse> should match 
// service_traits::MD5Sum< ::inmoov_msgs::MotorParameter > 
template<>
struct MD5Sum< ::inmoov_msgs::MotorParameterResponse>
{
  static const char* value()
  {
    return MD5Sum< ::inmoov_msgs::MotorParameter >::value();
  }
  static const char* value(const ::inmoov_msgs::MotorParameterResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::inmoov_msgs::MotorParameterResponse> should match 
// service_traits::DataType< ::inmoov_msgs::MotorParameter > 
template<>
struct DataType< ::inmoov_msgs::MotorParameterResponse>
{
  static const char* value()
  {
    return DataType< ::inmoov_msgs::MotorParameter >::value();
  }
  static const char* value(const ::inmoov_msgs::MotorParameterResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // INMOOV_MSGS_MESSAGE_MOTORPARAMETER_H
