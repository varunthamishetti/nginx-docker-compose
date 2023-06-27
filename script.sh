#!/bin/bash

while read line
do
   if echo "$line" | grep -q -e "varun_database_1" -e "varun_web_1"; then
    # Extract the container name, status, and ports
    container_name=$(echo "$line" | awk '{print $1}')
    status=$(echo "$line" | awk '{print $3}')
     # Print the container details
    echo "Container Name: $container_name"
    echo "Status: $status"
    echo
  fi
done < output.txt

