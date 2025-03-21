# `ros2_create_pkg` Script

## Overview
The `ros2_create_pkg` script helps in creating a ROS (Robot Operating System) package. It automates the initial setup of the package and adds necessary dependencies, allowing developers to start working quickly.

## Installation
To use the script, clone the repository from GitHub and run the setup script to complete the necessary configuration.

```shell
$ git clone https://github.com/mkdir-sweetiepie/ros2_create_pkg.git
$ cd ros2_create_pkg
$ ./setup.sh
$ source ~/.bashrc
```

## Usage
To create a package, use the following command:
```shell 
$ ros2_create_pkg [package_name] [dependencies]
```
- [package_name]: The name of the package you want to create.
- [dependencies]: Other ROS packages or QT modules that your package depends on, separated by spaces.

For example, to create a package named my_qt_package with dependencies roscpp and std_msgs, you would run:
```shell  
$ ros2_create_pkg my_package rclcpp std_msgs
```
