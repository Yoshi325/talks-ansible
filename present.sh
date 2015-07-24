#!/bin/bash
./build.sh;
{ sleep 2s; open 'http://localhost:5000/'; } & \
    node serve.js \
;
