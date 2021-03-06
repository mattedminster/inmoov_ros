// Generated by gencpp from file inmoov_msgs/RequestStatus.msg
// DO NOT EDIT!


#ifndef INMOOV_MSGS_MESSAGE_REQUESTSTATUS_H
#define INMOOV_MSGS_MESSAGE_REQUESTSTATUS_H

#include <ros/service_traits.h>


#include <inmoov_msgs/RequestStatusRequest.h>
#include <inmoov_msgs/RequestStatusResponse.h>


namespace inmoov_msgs
{

struct RequestStatus
{

typedef RequestStatusRequest Request;
typedef RequestStatusResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct RequestStatus
} // namespace inmoov_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::inmoov_msgs::RequestStatus > {
  static const char* value()
  {
    return "1ba6f49c4dbbcc62a030b0539b05a793";
  }

  static const char* value(const ::inmoov_msgs::RequestStatus&) { return value(); }
};

template<>
struct DataType< ::inmoov_msgs::RequestStatus > {
  static const char* value()
  {
    return "inmoov_msgs/RequestStatus";
  }

  static const char* value(const ::inmoov_msgs::RequestStatus&) { return value(); }
};


// service_traits::MD5Sum< ::inmoov_msgs::RequestStatusRequest> should match 
// service_traits::MD5Sum< ::inmoov_msgs::RequestStatus > 
template<>
struct MD5Sum< ::inmoov_msgs::RequestStatusRequest>
{
  static const char* value()
  {
    return MD5Sum< ::inmoov_msgs::RequestStatus >::value();
  }
  static const char* value(const ::inmoov_msgs::RequestStatusRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::inmoov_msgs::RequestStatusRequest> should match 
// service_traits::DataType< ::inmoov_msgs::RequestStatus > 
template<>
struct DataType< ::inmoov_msgs::RequestStatusRequest>
{
  static const char* value()
  {
    return DataType< ::inmoov_msgs::RequestStatus >::value();
  }
  static const char* value(const ::inmoov_msgs::RequestStatusRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::inmoov_msgs::RequestStatusResponse> should match 
// service_traits::MD5Sum< ::inmoov_msgs::RequestStatus > 
template<>
struct MD5Sum< ::inmoov_msgs::RequestStatusResponse>
{
  static const char* value()
  {
    return MD5Sum< ::inmoov_msgs::RequestStatus >::value();
  }
  static const char* value(const ::inmoov_msgs::RequestStatusResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::inmoov_msgs::RequestStatusResponse> should match 
// service_traits::DataType< ::inmoov_msgs::RequestStatus > 
template<>
struct DataType< ::inmoov_msgs::RequestStatusResponse>
{
  static const char* value()
  {
    return DataType< ::inmoov_msgs::RequestStatus >::value();
  }
  static const char* value(const ::inmoov_msgs::RequestStatusResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // INMOOV_MSGS_MESSAGE_REQUESTSTATUS_H
