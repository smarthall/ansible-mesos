#!/bin/bash

for i in task-data/marathon/*.json; do
  echo "Deploying ${i} to Marathon"
  curl -X POST -H "Content-Type: application/json" 'http://192.168.77.254:8080/v2/apps?force=true' -d@${i} &>/dev/null
done

for i in task-data/chronos/*.json; do
  echo "Deploying ${i} to Chronos"
  curl -L -H "Content-Type: application/json" -X POST -d@${i} http://192.168.77.254:4400/scheduler/iso8601 &>/dev/null
done

