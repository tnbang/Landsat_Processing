#!/bin/bash

cd /localdisk/home/azvoleff/teamlucc

git pull
sed -i 's/dplyr/plyr/' ./DESCRIPTION
sed -i '/dplyr/d' ./NAMESPACE
R -e 'library(devtools);install(".")'
