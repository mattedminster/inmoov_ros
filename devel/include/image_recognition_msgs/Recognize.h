// Generated by gencpp from file image_recognition_msgs/Recognize.msg
// DO NOT EDIT!


#ifndef IMAGE_RECOGNITION_MSGS_MESSAGE_RECOGNIZE_H
#define IMAGE_RECOGNITION_MSGS_MESSAGE_RECOGNIZE_H

#include <ros/service_traits.h>


#include <image_recognition_msgs/RecognizeRequest.h>
#include <image_recognition_msgs/RecognizeResponse.h>


namespace image_recognition_msgs
{

struct Recognize
{

typedef RecognizeRequest Request;
typedef RecognizeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Recognize
} // namespace image_recognition_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::image_recognition_msgs::Recognize > {
  static const char* value()
  {
    return "8d9547bfa24d0a09f2ae0c752eabd35d";
  }

  static const char* value(const ::image_recognition_msgs::Recognize&) { return value(); }
};

template<>
struct DataType< ::image_recognition_msgs::Recognize > {
  static const char* value()
  {
    return "image_recognition_msgs/Recognize";
  }

  static const char* value(const ::image_recognition_msgs::Recognize&) { return value(); }
};


// service_traits::MD5Sum< ::image_recognition_msgs::RecognizeRequest> should match 
// service_traits::MD5Sum< ::image_recognition_msgs::Recognize > 
template<>
struct MD5Sum< ::image_recognition_msgs::RecognizeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::image_recognition_msgs::Recognize >::value();
  }
  static const char* value(const ::image_recognition_msgs::RecognizeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::image_recognition_msgs::RecognizeRequest> should match 
// service_traits::DataType< ::image_recognition_msgs::Recognize > 
template<>
struct DataType< ::image_recognition_msgs::RecognizeRequest>
{
  static const char* value()
  {
    return DataType< ::image_recognition_msgs::Recognize >::value();
  }
  static const char* value(const ::image_recognition_msgs::RecognizeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::image_recognition_msgs::RecognizeResponse> should match 
// service_traits::MD5Sum< ::image_recognition_msgs::Recognize > 
template<>
struct MD5Sum< ::image_recognition_msgs::RecognizeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::image_recognition_msgs::Recognize >::value();
  }
  static const char* value(const ::image_recognition_msgs::RecognizeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::image_recognition_msgs::RecognizeResponse> should match 
// service_traits::DataType< ::image_recognition_msgs::Recognize > 
template<>
struct DataType< ::image_recognition_msgs::RecognizeResponse>
{
  static const char* value()
  {
    return DataType< ::image_recognition_msgs::Recognize >::value();
  }
  static const char* value(const ::image_recognition_msgs::RecognizeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // IMAGE_RECOGNITION_MSGS_MESSAGE_RECOGNIZE_H
