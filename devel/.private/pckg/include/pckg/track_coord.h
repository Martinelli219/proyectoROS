// Generated by gencpp from file pckg/track_coord.msg
// DO NOT EDIT!


#ifndef PCKG_MESSAGE_TRACK_COORD_H
#define PCKG_MESSAGE_TRACK_COORD_H

#include <ros/service_traits.h>


#include <pckg/track_coordRequest.h>
#include <pckg/track_coordResponse.h>


namespace pckg
{

struct track_coord
{

typedef track_coordRequest Request;
typedef track_coordResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct track_coord
} // namespace pckg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pckg::track_coord > {
  static const char* value()
  {
    return "fcf1b3f28988025a9decb7235f491f13";
  }

  static const char* value(const ::pckg::track_coord&) { return value(); }
};

template<>
struct DataType< ::pckg::track_coord > {
  static const char* value()
  {
    return "pckg/track_coord";
  }

  static const char* value(const ::pckg::track_coord&) { return value(); }
};


// service_traits::MD5Sum< ::pckg::track_coordRequest> should match
// service_traits::MD5Sum< ::pckg::track_coord >
template<>
struct MD5Sum< ::pckg::track_coordRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pckg::track_coord >::value();
  }
  static const char* value(const ::pckg::track_coordRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pckg::track_coordRequest> should match
// service_traits::DataType< ::pckg::track_coord >
template<>
struct DataType< ::pckg::track_coordRequest>
{
  static const char* value()
  {
    return DataType< ::pckg::track_coord >::value();
  }
  static const char* value(const ::pckg::track_coordRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pckg::track_coordResponse> should match
// service_traits::MD5Sum< ::pckg::track_coord >
template<>
struct MD5Sum< ::pckg::track_coordResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pckg::track_coord >::value();
  }
  static const char* value(const ::pckg::track_coordResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pckg::track_coordResponse> should match
// service_traits::DataType< ::pckg::track_coord >
template<>
struct DataType< ::pckg::track_coordResponse>
{
  static const char* value()
  {
    return DataType< ::pckg::track_coord >::value();
  }
  static const char* value(const ::pckg::track_coordResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PCKG_MESSAGE_TRACK_COORD_H
