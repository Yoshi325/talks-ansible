#!/bin/bash

build.sh \
  & node serve.js \
      & open 'http://localhost:5000/' \
;
