# HEAL_Dynamixel 
Ubuntu 16.04 with ROS kinetic

## 1. To run hardware test 

In src/heal_dmc_controllers/config/hardware_test.yaml, change the id to the id of the dynamixels used
```
left_right:
  ID: 200               <--- change this
  Return_Delay_Time: 0
  CW_Angle_Limit: 0
  CCW_Angle_Limit: 0
up_down:
  ID: 199               <--- change this
  Return_Delay_Time: 0
  CW_Angle_Limit: 0
  CCW_Angle_Limit: 0

```
Setup
```
$ catkin_make
$ source devel/setup.bash
$ sudo chown [ubuntu username] /dev/ttyACM0
```
Running the test
```
$ roslaunch heal_dmc_controllers hardware_test.launch
```
Note: Stop the dynamixels by pressing 's' before killing the process, otherwise the dynamixel will continue to run. To resolve this, restart the node, the dynamixel should stop
