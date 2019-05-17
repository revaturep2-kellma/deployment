#!/bin/bash

killall node
cd /media/app/kellmas-backend
git pull
npm install
npm start
