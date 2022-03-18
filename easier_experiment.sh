#!/bin/bash

README_FILE=README.md
# SUPPORTED CASE STUDIES: train-ticket, simplified-cocome
#CASE_STUDY=`grep -A1 "^\-m$" config.ini | grep -v "^\-m$"`
CASE_STUDY=simplified-cocome
#Supported algorithms nsgaii, spea2, pesa2
ALGORITHM=`grep -A2 "^\-algo$" config.ini | grep -A1 "Sup" | grep -v "Sup"`
EXPERIMENT_FOLDER=$CASE_STUDY'/'$ALGORITHM
EXPERIMENT_NAME=$1
CONFIG_URL="https://raw.githubusercontent.com/danieledipompeo/easier-experiments/${EXPERIMENT_NAME}/config.ini"


cat << EOF > $README_FILE

## Run a Docker image

 - Experiment: 
   - Case study: $CASE_STUDY
   - Algorithm: $ALGORITHM

docker run -d --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/${EXPERIMENT_FOLDER}:/mnt/easier-output/ ${CONFIG_URL}

EOF

git checkout -b $EXPERIMENT_NAME
git add $README_FILE config.ini
git commit -m "create ${EXPERIMENT_NAME} branch"
git push origin $EXPERIMENT_NAME
git checkout main

