#!/bin/bash
# Copyright (c) 2018 - present Software Architecture Group (Hasso Plattner Institute)
# Copyright (c) 2018 - present Patrick Rein

set -e


if [[ "${TRAVIS_TAG}" = "v"* ]];
then
  echo "Starting to build the sar now"
  . ${SMALLTALK_CI_HOME}/squeak/run.sh
  squeak::run_script "prepare_sar.st"  
  cp $SMALLTALK_CI_BUILD/Rack.sar $TRAVIS_BUILD_DIR
else
  echo "Skipped building the sar"
fi
