#! /bin/bash

function custom_echo()
{
  text=$1
  color=$2

  case $color in
    "green")
      echo -e "\033[32m[RO:BIT] $text\033[0m"
      ;;
    "red")
      echo -e "\033[31m[RO:BIT] $text\033[0m"
      ;;
    *)
      echo "$text"
      ;;
  esac
}

custom_echo "ros2_create_pkg setup running ! " "green"
custom_echo "Moving scrips to ~/" "green"
cd ..
mv ros2_create_pkg ~/.ros2_create_pkg_scripts

echo 'ros2_create_pkg() {
    local package_name="$1"
    shift 
    local dependencies="$@"
    local current_directory="$PWD"
    /home/"$USER"/.ros2_create_pkg_scripts/ros2_create_pkg.sh "$current_directory" "$package_name" "$dependencies"
}' >> ~/.bashrc
source ~/.bashrc

sudo apt-get -y install tree
