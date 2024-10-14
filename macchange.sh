#!/bin/bash
sudo ifconfig eno1 down
sudo macchanger -r eno1
sudo ifconfig eno1 up

# ifconfig to check for your network name