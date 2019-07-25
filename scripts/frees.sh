#!/bin/bash

hostname && df -h | grep -B 1 root
./ssh-m1-mass-lc.sh df -h | grep -B 2 root

#запуск ./rmt.sh -d 10.17.5.203 -s frees.sh