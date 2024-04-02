# bot_control
This package includes visualization of laserscan data from the Hokuyo Lidar mounted on top of the bot. This also contains a python script which takes laserscan data of 120 degrees FOV from the lidar.

To receive laserscan data from 120 degrees FOV
```
rosrun bot_control reader_laser.py
```
To visualize the scan data in RViz
```
roslaunch bot_control scan_viz.launch
```