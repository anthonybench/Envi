#!/bin/sh 
#
# This script pulls down whatever repo's

echo "\n\n\n\n\n\n"

# Pull Training
cd ~/OneDrive/Anthony\ Bench\ Data/CloudSpace/Training
echo "\n================================================="
echo "\n=================================================\n\n"
git pull
wait
echo "\n================================================="

# Pull School
cd ~/OneDrive/Anthony\ Bench\ Data/CloudSpace/School
echo "\n=================================================\n\n"
git pull
wait
echo "\n================================================="

# Pull Arduino
cd ~/OneDrive/Anthony\ Bench\ Data/CloudSpace/Arduino
echo "\n=================================================\n\n"
git pull
wait
echo "\n================================================="

# Pull Web_Learn
cd ~/OneDrive/Anthony\ Bench\ Data/CloudSpace/Web_Learn
echo "\n=================================================\n\n"
git pull
wait
echo "\n================================================="

# Pull GitHub Pages
cd ~/OneDrive/Anthony\ Bench\ Data/CloudSpace/anthonybench.github.io
echo "\n=================================================\n\n"
git pull
wait
echo "\n================================================="

# Pull enviornments
cd ~/enviornments
echo "\n=================================================\n\n"
git pull
wait
echo "\n================================================="
echo "\n================================================="

echo "\n\n\n\n\n\n"
