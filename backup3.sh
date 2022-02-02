#!/bin/bash

# This bash script is used to backup a user's bash-scripting directory.

user=$(whoami)
input=/mnt/c/Users/$user/Documents/personalProjects
output=/mnt/c/Users/${user}/Documents/personalProjects/bash-scripting/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

# The function get_files reports a total number of files for a given directory.
function get_files {
	find $1 -type f | wc -l
}

# The function get_directories reports a total number of directories
# for a given directory.
function get_directories {
        find $1 -type d | wc -l
}

tar -czf $output $input 2> /dev/null

echo -n "Files to be included:"
get_files $input
echo -n "Directories to be included:"
get_directories $input

echo "Backup of $input completed!"

echo "Details about the output backup file:"
ls -l $output
