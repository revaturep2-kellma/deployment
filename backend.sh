#!/bin/bash

# cd /home/azureuser
# touch test2.js

killall node
cd /home/azureuser/kellmas-backend
touch somerandomfile.txt
git pull
touch somerandomfile2.txt
npm install
touch somerandomfile3.txt
npm start
touch somerandomfile4.txt