// Generated by gencpp from file pckg/move_pos_simu_rand.msg
// DO NOT EDIT!


#ifndef PCKG_MESSAGE_MOVE_POS_SIMU_RAND_H
#define PCKG_MESSAGE_MOVE_POS_SIMU_RAND_H

#include <ros/service_traits.h>


#include <pckg/move_pos_simu_randRequest.h>
#include <pckg/move_pos_simu_randResponse.h>


namespace pckg
{

struct move_pos_simu_rand
{

typedef move_pos_simu_randRequest Request;
typedef move_pos_simu_randResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct move_pos_simu_rand
} // namespace pckg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pckg::move_pos_simu_rand > {
  static const char* value()
  {
    return "e2cc9e9d8c464550830df49c160979ad";
  }

  static const char* value(const ::pckg::move_pos_simu_rand&) { return value(); }
};

template<>
struct DataType< ::pckg::move_pos_simu_rand > {
  static const char* value()
  {
    return "pckg/move_pos_simu_rand";
  }

  static const char* value(const ::pckg::move_pos_simu_rand&) { return value(); }
};


// service_traits::MD5Sum< ::pckg::move_pos_simu_randRequest> should match
// service_traits::MD5Sum< ::pckg::move_pos_simu_rand >
template<>
struct MD5Sum< ::pckg::move_pos_simu_randRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pckg::move_pos_simu_rand >::value();
  }
  static const char* value(const ::pckg::move_pos_simu_randRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pckg::move_pos_simu_randRequest> should match
// service_traits::DataType< ::pckg::move_pos_simu_rand >
template<>
struct DataType< ::pckg::move_pos_simu_randRequest>
{
  static const char* value()
  {
    return DataType< ::pckg::move_pos_simu_rand >::value();
  }
  static const char* value(const ::pckg::move_pos_simu_randRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pckg::move_pos_simu_randResponse> should match
// service_traits::MD5Sum< ::pckg::move_pos_simu_rand >
template<>
struct MD5Sum< ::pckg::move_pos_simu_randResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pckg::move_pos_simu_rand >::value();
  }
  static const char* value(const ::pckg::move_pos_simu_randResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pckg::move_pos_simu_randResponse> should match
// service_traits::DataType< ::pckg::move_pos_simu_rand >
template<>
struct DataType< ::pckg::move_pos_simu_randResponse>
{
  static const char* value()
  {
    return DataType< ::pckg::move_pos_simu_rand >::value();
  }
  static const char* value(const ::pckg::move_pos_simu_randResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PCKG_MESSAGE_MOVE_POS_SIMU_RAND_H
