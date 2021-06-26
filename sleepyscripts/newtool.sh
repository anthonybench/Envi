#!/usr/bin/env bash

cp ~/Desktop/LocalDev/Templates/tool.py ~/Desktop/LocalDev/Sandbox/$1.py;
chmod +x ~/Desktop/LocalDev/Sandbox/$1.py;
code -n ~/Desktop/LocalDev/Sandbox/;