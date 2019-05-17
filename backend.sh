#!/bin/bash

# cd /home/azureuser
# touch test2.js

killall node
cd /media/app/kellmas-backend
git pull
npm install
npm start