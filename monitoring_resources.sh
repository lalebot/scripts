#!/bin/bash

while true; do
    clear
    echo "System Resource Monitoring"
    echo "--------------------------"

    # Display CPU usage
    echo "CPU Usage:"
    top -n 1 -b | grep "Cpu"

    # Display memory usage
    echo -e "\nMemory Usage:"
    free -h

    # Display disk space usage
    echo -e "\nDisk Space Usage:"
    df -h

    sleep 5 # Wait for 5 seconds before the next update
done