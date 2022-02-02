#!/bin/bash
user=$(whoami)
tar -czf /mnt/c/Users/${user}/Documents/personalProjects/bash-scripting/home_dir.tar.gz /home/$user

