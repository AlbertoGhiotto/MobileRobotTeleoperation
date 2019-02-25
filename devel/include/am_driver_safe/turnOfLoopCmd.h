// Generated by gencpp from file am_driver_safe/turnOfLoopCmd.msg
// DO NOT EDIT!


#ifndef AM_DRIVER_SAFE_MESSAGE_TURNOFLOOPCMD_H
#define AM_DRIVER_SAFE_MESSAGE_TURNOFLOOPCMD_H

#include <ros/service_traits.h>


#include <am_driver_safe/turnOfLoopCmdRequest.h>
#include <am_driver_safe/turnOfLoopCmdResponse.h>


namespace am_driver_safe
{

struct turnOfLoopCmd
{

typedef turnOfLoopCmdRequest Request;
typedef turnOfLoopCmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct turnOfLoopCmd
} // namespace am_driver_safe


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::am_driver_safe::turnOfLoopCmd > {
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::am_driver_safe::turnOfLoopCmd&) { return value(); }
};

template<>
struct DataType< ::am_driver_safe::turnOfLoopCmd > {
  static const char* value()
  {
    return "am_driver_safe/turnOfLoopCmd";
  }

  static const char* value(const ::am_driver_safe::turnOfLoopCmd&) { return value(); }
};


// service_traits::MD5Sum< ::am_driver_safe::turnOfLoopCmdRequest> should match 
// service_traits::MD5Sum< ::am_driver_safe::turnOfLoopCmd > 
template<>
struct MD5Sum< ::am_driver_safe::turnOfLoopCmdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::am_driver_safe::turnOfLoopCmd >::value();
  }
  static const char* value(const ::am_driver_safe::turnOfLoopCmdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::am_driver_safe::turnOfLoopCmdRequest> should match 
// service_traits::DataType< ::am_driver_safe::turnOfLoopCmd > 
template<>
struct DataType< ::am_driver_safe::turnOfLoopCmdRequest>
{
  static const char* value()
  {
    return DataType< ::am_driver_safe::turnOfLoopCmd >::value();
  }
  static const char* value(const ::am_driver_safe::turnOfLoopCmdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::am_driver_safe::turnOfLoopCmdResponse> should match 
// service_traits::MD5Sum< ::am_driver_safe::turnOfLoopCmd > 
template<>
struct MD5Sum< ::am_driver_safe::turnOfLoopCmdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::am_driver_safe::turnOfLoopCmd >::value();
  }
  static const char* value(const ::am_driver_safe::turnOfLoopCmdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::am_driver_safe::turnOfLoopCmdResponse> should match 
// service_traits::DataType< ::am_driver_safe::turnOfLoopCmd > 
template<>
struct DataType< ::am_driver_safe::turnOfLoopCmdResponse>
{
  static const char* value()
  {
    return DataType< ::am_driver_safe::turnOfLoopCmd >::value();
  }
  static const char* value(const ::am_driver_safe::turnOfLoopCmdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AM_DRIVER_SAFE_MESSAGE_TURNOFLOOPCMD_H