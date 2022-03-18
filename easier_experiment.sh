#!/bin/bash

README_FILE=README.md
# SUPPORTED CASE STUDIES: train-ticket, simplified-cocome
#CASE_STUDY=`grep -A1 "^\-m$" config.ini | grep -v "^\-m$"`
CASE_STUDY=simplified-cocome
#Supported algorithms nsgaii, spea2, pesa2
ALGORITHM=`grep -A2 "^\-algo$" config.ini | grep -A1 "Sup" | grep -v "Sup"`
EXPERIMENT_NAME=$ALGORITHM'-'$CASE_STUDY
CONFIG_URL="https://raw.githubusercontent.com/danieledipompeo/easier-experiments/main/${EXPERIMENT_NAME}/config.ini"

mkdir $EXPERIMENT_NAME
cd $EXPERIMENT_NAME
cp ../config.ini .

cat << EOF > $README_FILE

## Run a Docker image

 - Experiment: 
   - Case study: $CASE_STUDY
   - Algorithm: $ALGORITHM

for i in \$(seq 1 ${1}); do docker run -d --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/${EXPERIMENT_NAME}/run\${i}:/mnt/easier-output/ ${CONFIG_URL}; done

EOF

#git add $README_FILE config.ini
#git commit -m "create ${EXPERIMENT_NAME} folder"
#git push 

cd ..

