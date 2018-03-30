# Install script for directory: /home/emersonboyd/MultiSLAM/catkin_ws/src/turtlebot3/turtlebot3_example

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/emersonboyd/MultiSLAM/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_example/action" TYPE FILE FILES "/home/emersonboyd/MultiSLAM/catkin_ws/src/turtlebot3/turtlebot3_example/action/turtlebot3.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_example/msg" TYPE FILE FILES
    "/home/emersonboyd/MultiSLAM/catkin_ws/devel/share/turtlebot3_example/msg/turtlebot3Action.msg"
    "/home/emersonboyd/MultiSLAM/catkin_ws/devel/share/turtlebot3_example/msg/turtlebot3ActionGoal.msg"
    "/home/emersonboyd/MultiSLAM/catkin_ws/devel/share/turtlebot3_example/msg/turtlebot3ActionResult.msg"
    "/home/emersonboyd/MultiSLAM/catkin_ws/devel/share/turtlebot3_example/msg/turtlebot3ActionFeedback.msg"
    "/home/emersonboyd/MultiSLAM/catkin_ws/devel/share/turtlebot3_example/msg/turtlebot3Goal.msg"
    "/home/emersonboyd/MultiSLAM/catkin_ws/devel/share/turtlebot3_example/msg/turtlebot3Result.msg"
    "/home/emersonboyd/MultiSLAM/catkin_ws/devel/share/turtlebot3_example/msg/turtlebot3Feedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_example/cmake" TYPE FILE FILES "/home/emersonboyd/MultiSLAM/catkin_ws/build/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_example-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/emersonboyd/MultiSLAM/catkin_ws/devel/include/turtlebot3_example")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/emersonboyd/MultiSLAM/catkin_ws/devel/share/roseus/ros/turtlebot3_example")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/emersonboyd/MultiSLAM/catkin_ws/devel/share/common-lisp/ros/turtlebot3_example")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/emersonboyd/MultiSLAM/catkin_ws/devel/share/gennodejs/ros/turtlebot3_example")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/emersonboyd/MultiSLAM/catkin_ws/devel/lib/python2.7/dist-packages/turtlebot3_example")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/emersonboyd/MultiSLAM/catkin_ws/devel/lib/python2.7/dist-packages/turtlebot3_example")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/emersonboyd/MultiSLAM/catkin_ws/build/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_example.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_example/cmake" TYPE FILE FILES "/home/emersonboyd/MultiSLAM/catkin_ws/build/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_example-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_example/cmake" TYPE FILE FILES
    "/home/emersonboyd/MultiSLAM/catkin_ws/build/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_exampleConfig.cmake"
    "/home/emersonboyd/MultiSLAM/catkin_ws/build/turtlebot3/turtlebot3_example/catkin_generated/installspace/turtlebot3_exampleConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_example" TYPE FILE FILES "/home/emersonboyd/MultiSLAM/catkin_ws/src/turtlebot3/turtlebot3_example/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example/turtlebot3_marker_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example/turtlebot3_marker_server")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example/turtlebot3_marker_server"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE EXECUTABLE FILES "/home/emersonboyd/MultiSLAM/catkin_ws/devel/lib/turtlebot3_example/turtlebot3_marker_server")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example/turtlebot3_marker_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example/turtlebot3_marker_server")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example/turtlebot3_marker_server"
         OLD_RPATH "/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example/turtlebot3_marker_server")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_example" TYPE PROGRAM FILES
    "/home/emersonboyd/MultiSLAM/catkin_ws/src/turtlebot3/turtlebot3_example/scripts/turtlebot3_server.py"
    "/home/emersonboyd/MultiSLAM/catkin_ws/src/turtlebot3/turtlebot3_example/scripts/turtlebot3_client.py"
    "/home/emersonboyd/MultiSLAM/catkin_ws/src/turtlebot3/turtlebot3_example/scripts/turtlebot3_pointop_key.py"
    "/home/emersonboyd/MultiSLAM/catkin_ws/src/turtlebot3/turtlebot3_example/scripts/turtlebot3_obstacle.py"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_example" TYPE DIRECTORY FILES
    "/home/emersonboyd/MultiSLAM/catkin_ws/src/turtlebot3/turtlebot3_example/launch"
    "/home/emersonboyd/MultiSLAM/catkin_ws/src/turtlebot3/turtlebot3_example/rviz"
    )
endif()

