#!/bin/bash
string=$(docker logs mysql);

if [[ ${string} == *"mysql  Ver 14.14 Distrib 5.5.52, for debian-linux-gnu (armv7l) using readline 6.3"* ]]; then
  echo "Passed";
  exit 0
fi
  echo "Failed"
  exit 1
