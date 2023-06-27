#!/bin/bash

while read -r line
do
   if echo "$line" | grep -q -e "varun-assessment-3_database_1" -e "varun-assessment-3_web_1"; then
    # Extract the container name, status, and ports
    container_name=$(echo "$line" | awk '{print $1}')
    status=$(echo "$line" | awk '{print $4}')
     # Print the container details
    echo "Container Name: $container_name"
    echo "Status: $status"
    echo
   else
        echo "No matching containers found"
   fi
done < output.txt
