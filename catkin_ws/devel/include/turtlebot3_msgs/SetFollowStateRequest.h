// Generated by gencpp from file turtlebot3_msgs/SetFollowStateRequest.msg
// DO NOT EDIT!


#ifndef TURTLEBOT3_MSGS_MESSAGE_SETFOLLOWSTATEREQUEST_H
#define TURTLEBOT3_MSGS_MESSAGE_SETFOLLOWSTATEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace turtlebot3_msgs
{
template <class ContainerAllocator>
struct SetFollowStateRequest_
{
  typedef SetFollowStateRequest_<ContainerAllocator> Type;

  SetFollowStateRequest_()
    : state(0)  {
    }
  SetFollowStateRequest_(const ContainerAllocator& _alloc)
    : state(0)  {
  (void)_alloc;
    }



   typedef uint8_t _state_type;
  _state_type state;



  enum {
    STOPPED = 0u,
    FOLLOW = 1u,
    OK = 0u,
    ERROR = 1u,
  };


  typedef boost::shared_ptr< ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetFollowStateRequest_

typedef ::turtlebot3_msgs::SetFollowStateRequest_<std::allocator<void> > SetFollowStateRequest;

typedef boost::shared_ptr< ::turtlebot3_msgs::SetFollowStateRequest > SetFollowStateRequestPtr;
typedef boost::shared_ptr< ::turtlebot3_msgs::SetFollowStateRequest const> SetFollowStateRequestConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace turtlebot3_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'turtlebot3_msgs': ['/home/emersonboyd/MultiSLAM/catkin_ws/src/turtlebot3_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bf26f08bd02c8f904098849ef5e63d81";
  }

  static const char* value(const ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbf26f08bd02c8f90ULL;
  static const uint64_t static_value2 = 0x4098849ef5e63d81ULL;
};

template<class ContainerAllocator>
struct DataType< ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "turtlebot3_msgs/SetFollowStateRequest";
  }

  static const char* value(const ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
uint8 STOPPED = 0\n\
uint8 FOLLOW  = 1\n\
\n\
uint8 OK      = 0\n\
uint8 ERROR   = 1\n\
\n\
\n\
\n\
\n\
uint8 state\n\
";
  }

  static const char* value(const ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetFollowStateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::turtlebot3_msgs::SetFollowStateRequest_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TURTLEBOT3_MSGS_MESSAGE_SETFOLLOWSTATEREQUEST_H
