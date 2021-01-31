# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;sensor_msgs;geometry_msgs;dynamixel_workbench_msgs;trajectory_msgs;dynamixel_workbench_toolbox;cmake_modules;rospy".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lheal_dmc_operator".split(';') if "-lheal_dmc_operator" != "" else []
PROJECT_NAME = "heal_dmc_operator"
PROJECT_SPACE_DIR = "/home/shengjie/catkin_ws/install"
PROJECT_VERSION = "0.0.0"
