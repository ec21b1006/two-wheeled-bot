# bot_description

## Introduction
This package contains the bot's model in a urdf format. The bot is also equipped with an RGB Camera and a Lidar (Hokuyo). Differential drive system have been implemented in order to teleoperate the bot. 

## Visualization and Teleoperation
To visualize the bot in RViz 
```
roslaunch bot_description rviz.launch
```
To visualize the bot in Gazebo
```
roslaunch bot_description spawn.launch
```
To teleoperate the bot using teleop twist keyboard
```
roslaunch bot_description control.launch
```