#!/bin/bash

HOST=$1
EXPERIMENT_NAME=$2

rsync -aPr --mkpath $HOST:$(dirname `grep -oP "/mnt.+run$i" ${EXPERIMENT_NAME}/README.md`) ${EXPERIMENT_NAME}'/data/'
