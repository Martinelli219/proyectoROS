// Generated by gencpp from file pckg/move_pos_simu_randRequest.msg
// DO NOT EDIT!


#ifndef PCKG_MESSAGE_MOVE_POS_SIMU_RANDREQUEST_H
#define PCKG_MESSAGE_MOVE_POS_SIMU_RANDREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pckg
{
template <class ContainerAllocator>
struct move_pos_simu_randRequest_
{
  typedef move_pos_simu_randRequest_<ContainerAllocator> Type;

  move_pos_simu_randRequest_()
    {
    }
  move_pos_simu_randRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::pckg::move_pos_simu_randRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pckg::move_pos_simu_randRequest_<ContainerAllocator> const> ConstPtr;

}; // struct move_pos_simu_randRequest_

typedef ::pckg::move_pos_simu_randRequest_<std::allocator<void> > move_pos_simu_randRequest;

typedef boost::shared_ptr< ::pckg::move_pos_simu_randRequest > move_pos_simu_randRequestPtr;
typedef boost::shared_ptr< ::pckg::move_pos_simu_randRequest const> move_pos_simu_randRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pckg::move_pos_simu_randRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pckg::move_pos_simu_randRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace pckg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pckg::move_pos_simu_randRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pckg::move_pos_simu_randRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pckg::move_pos_simu_randRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pckg::move_pos_simu_randRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pckg::move_pos_simu_randRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pckg::move_pos_simu_randRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pckg::move_pos_simu_randRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::pckg::move_pos_simu_randRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::pckg::move_pos_simu_randRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pckg/move_pos_simu_randRequest";
  }

  static const char* value(const ::pckg::move_pos_simu_randRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pckg::move_pos_simu_randRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::pckg::move_pos_simu_randRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pckg::move_pos_simu_randRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct move_pos_simu_randRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pckg::move_pos_simu_randRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::pckg::move_pos_simu_randRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // PCKG_MESSAGE_MOVE_POS_SIMU_RANDREQUEST_H
