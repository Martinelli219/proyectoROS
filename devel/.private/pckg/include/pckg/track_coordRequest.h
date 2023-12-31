// Generated by gencpp from file pckg/track_coordRequest.msg
// DO NOT EDIT!


#ifndef PCKG_MESSAGE_TRACK_COORDREQUEST_H
#define PCKG_MESSAGE_TRACK_COORDREQUEST_H


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
struct track_coordRequest_
{
  typedef track_coordRequest_<ContainerAllocator> Type;

  track_coordRequest_()
    : pos()  {
    }
  track_coordRequest_(const ContainerAllocator& _alloc)
    : pos(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _pos_type;
  _pos_type pos;





  typedef boost::shared_ptr< ::pckg::track_coordRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pckg::track_coordRequest_<ContainerAllocator> const> ConstPtr;

}; // struct track_coordRequest_

typedef ::pckg::track_coordRequest_<std::allocator<void> > track_coordRequest;

typedef boost::shared_ptr< ::pckg::track_coordRequest > track_coordRequestPtr;
typedef boost::shared_ptr< ::pckg::track_coordRequest const> track_coordRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pckg::track_coordRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pckg::track_coordRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pckg::track_coordRequest_<ContainerAllocator1> & lhs, const ::pckg::track_coordRequest_<ContainerAllocator2> & rhs)
{
  return lhs.pos == rhs.pos;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pckg::track_coordRequest_<ContainerAllocator1> & lhs, const ::pckg::track_coordRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pckg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pckg::track_coordRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pckg::track_coordRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pckg::track_coordRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pckg::track_coordRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pckg::track_coordRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pckg::track_coordRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pckg::track_coordRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2749d18f524a3c458d1f1fba1146eae0";
  }

  static const char* value(const ::pckg::track_coordRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2749d18f524a3c45ULL;
  static const uint64_t static_value2 = 0x8d1f1fba1146eae0ULL;
};

template<class ContainerAllocator>
struct DataType< ::pckg::track_coordRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pckg/track_coordRequest";
  }

  static const char* value(const ::pckg::track_coordRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pckg::track_coordRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[] pos\n"
;
  }

  static const char* value(const ::pckg::track_coordRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pckg::track_coordRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct track_coordRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pckg::track_coordRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pckg::track_coordRequest_<ContainerAllocator>& v)
  {
    s << indent << "pos[]" << std::endl;
    for (size_t i = 0; i < v.pos.size(); ++i)
    {
      s << indent << "  pos[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.pos[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PCKG_MESSAGE_TRACK_COORDREQUEST_H
