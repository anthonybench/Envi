#!/usr/bin/env bash

cd ~/Desktop/Repos/work-backup;
# export PYENV_VERSION=sleepyenv; wait;
./backup.py $1; wait;
git add .;
git commit -m "Backup Generated:    $(date)";
git push origin master;