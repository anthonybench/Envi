#!/bin/sh 
#
# This script does the following on whatever repo's:
#
# Checks git status
# Stages everything (be sure to maintain .gitignore files)
# Sends commit ("automated push: date")
# Sends push (make sure this script push to intended branch)
# Gets status again

now=$(date)

echo "\n\n\n\n\n\n"

# Push Training
cd ~/OneDrive/Anthony\ Bench\ Data/CloudSpace/Training
echo "\n================================================="
echo "\n=================================================\n\n"
git status
wait
echo "***************************\nBefore stage->commit->push\n***************************"
git add .
wait
git commit -m "automated push: $now"
wait
git push origin master
wait
git status
wait
echo "======================\nTraining Pushed -->\n======================"
echo "\n================================================="

# Push School
cd ~/OneDrive/Anthony\ Bench\ Data/CloudSpace/School
echo "\n=================================================\n\n"
git status
wait
echo "***************************\nBefore stage->commit->push\n***************************"
git add .
wait
git commit -m "automated push: $now"
wait
git push origin master
wait
git status
wait
echo "======================\nSchool Pushed -->\n======================"
echo "\n================================================="

# Push Github Pages
cd ~/OneDrive/Anthony\ Bench\ Data/CloudSpace/anthonybench.github.io
echo "\n=================================================\n\n"
git status
wait
echo "***************************\nBefore stage->commit->push\n***************************"
git add .
wait
git commit -m "automated push: $now"
wait
git push origin master
wait
git status
wait
echo "======================\nGitHub Pages Pushed -->\n======================"
echo "\n================================================="

# Push Web_Learn 
cd ~/OneDrive/Anthony\ Bench\ Data/CloudSpace/Web_Learn
echo "\n=================================================\n\n"
git status
wait
echo "***************************\nBefore stage->commit->push\n***************************"
git add .
wait
git commit -m "automated push: $now"
wait
git push origin master
wait
git status
wait
echo "======================\nWebLearn Pushed -->\n======================"
echo "\n================================================="

# Push Arduino
cd ~/OneDrive/Anthony\ Bench\ Data/CloudSpace/Arduino
echo "\n=================================================\n\n"
git status
wait
echo "***************************\nBefore stage->commit->push\n***************************"
git add .
wait
git commit -m "automated push: $now"
wait
git push origin master
wait
git status
wait
echo "======================\nArduino Pushed -->\n======================"
echo "\n================================================="

# Push enviornments
cd ~/enviornments
echo "\n=================================================\n\n"
git status
wait
echo "***************************\nBefore stage->commit->push\n***************************"
git add .
wait
git commit -m "automated push: $now"
wait
wait
git push origin master
wait
git status
wait
echo "======================\nenviornments Pushed -->\n======================"
echo "\n================================================="
echo "\n================================================="


echo "\n\n\n\n\n\n"
