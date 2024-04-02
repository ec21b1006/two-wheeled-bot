# Two wheeled bot

## Introduction
Welcome to the Manas Narayan's GitHub repository for [Ogmen Robotics](https://www.ogmenrobotics.com/) (Robot Software Engineer Intern - Coding Round)! Here, you will find [ROS](https://www.ros.org/) packages and configurations specifically developed for this Round. 

This repository contains description of a two wheeled bot of dimensions provided below. This project provides you with a two wheeled bot with a castor wheel in front in urdf format.Below you can find the bot's mechanical engineering drawing.

![alt text](https://raw.githubusercontent.com/ec21b1006/two-wheeled-bot/master/refs/bot_dimensions.png)

## Installation
### Install on Host system
Setup
- OS: [Ubuntu 20.04 Focal Fossa](https://releases.ubuntu.com/focal/)
- ROS version: [ROS Noetic Ninjemys](https://wiki.ros.org/noetic) - Run *install_noetic.sh* file provided in **scripts** folder.

Install the git

```
sudo apt install git
```

Now, choose directory of your choice and run
```
mkdir -p bot_ws/src && cd bot_ws/src
```

Clone this repo and run installer scripts inside src

```
git clone https://github.com/ec21b1006/two-wheeled-bot.git
sudo chmod +x two-wheeled-bot/scripts/install_dependencies.sh
sudo ./two-wheeled-bot/scripts/install_dependencies.sh
```

Build your files and source it
```
cd ..
catkin build
source devel/setup.bash
```