# Install script for directory: /home/shengjie/catkin_ws/src/ROBOTIS-Framework-msgs/robotis_controller_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/shengjie/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotis_controller_msgs/msg" TYPE FILE FILES
    "/home/shengjie/catkin_ws/src/ROBOTIS-Framework-msgs/robotis_controller_msgs/msg/SyncWriteItem.msg"
    "/home/shengjie/catkin_ws/src/ROBOTIS-Framework-msgs/robotis_controller_msgs/msg/JointCtrlModule.msg"
    "/home/shengjie/catkin_ws/src/ROBOTIS-Framework-msgs/robotis_controller_msgs/msg/StatusMsg.msg"
    "/home/shengjie/catkin_ws/src/ROBOTIS-Framework-msgs/robotis_controller_msgs/msg/WriteControlTable.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotis_controller_msgs/srv" TYPE FILE FILES
    "/home/shengjie/catkin_ws/src/ROBOTIS-Framework-msgs/robotis_controller_msgs/srv/GetJointModule.srv"
    "/home/shengjie/catkin_ws/src/ROBOTIS-Framework-msgs/robotis_controller_msgs/srv/SetJointModule.srv"
    "/home/shengjie/catkin_ws/src/ROBOTIS-Framework-msgs/robotis_controller_msgs/srv/SetModule.srv"
    "/home/shengjie/catkin_ws/src/ROBOTIS-Framework-msgs/robotis_controller_msgs/srv/LoadOffset.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotis_controller_msgs/cmake" TYPE FILE FILES "/home/shengjie/catkin_ws/build/ROBOTIS-Framework-msgs/robotis_controller_msgs/catkin_generated/installspace/robotis_controller_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/shengjie/catkin_ws/devel/include/robotis_controller_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/shengjie/catkin_ws/devel/share/roseus/ros/robotis_controller_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/shengjie/catkin_ws/devel/share/common-lisp/ros/robotis_controller_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/shengjie/catkin_ws/devel/share/gennodejs/ros/robotis_controller_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/shengjie/catkin_ws/devel/lib/python2.7/dist-packages/robotis_controller_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/shengjie/catkin_ws/devel/lib/python2.7/dist-packages/robotis_controller_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shengjie/catkin_ws/build/ROBOTIS-Framework-msgs/robotis_controller_msgs/catkin_generated/installspace/robotis_controller_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotis_controller_msgs/cmake" TYPE FILE FILES "/home/shengjie/catkin_ws/build/ROBOTIS-Framework-msgs/robotis_controller_msgs/catkin_generated/installspace/robotis_controller_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotis_controller_msgs/cmake" TYPE FILE FILES
    "/home/shengjie/catkin_ws/build/ROBOTIS-Framework-msgs/robotis_controller_msgs/catkin_generated/installspace/robotis_controller_msgsConfig.cmake"
    "/home/shengjie/catkin_ws/build/ROBOTIS-Framework-msgs/robotis_controller_msgs/catkin_generated/installspace/robotis_controller_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotis_controller_msgs" TYPE FILE FILES "/home/shengjie/catkin_ws/src/ROBOTIS-Framework-msgs/robotis_controller_msgs/package.xml")
endif()

