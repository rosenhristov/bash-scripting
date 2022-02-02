#! /usr/bin/bash
user=$(whoami)
data=$(date)
echo "Current date and time for $user is: $data"
echo "Current day of month for $user is: "
cal
