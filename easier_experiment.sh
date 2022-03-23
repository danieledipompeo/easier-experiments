#!/bin/bash

README_FILE=README.md
CASE_STUDY=`echo $(basename $(dirname $(grep -A1 "^\-m$" config.ini | grep -v "^\-m$")))`
ALGORITHM=`grep -A2 "^\-algo$" config.ini | grep -A1 "Sup" | grep -v "Sup"`
SEARCH_BUDGET=`grep -A2 "^\--search-budget" config.ini | grep -A1 "\#It" | grep -v "\#It"`
SEARCH_BUDGET_TH=`grep -A2 "^\-sbTimeTh" config.ini | grep -A1 "\#Time" | grep -v "\#Time"`
EXPERIMENT_NAME=$ALGORITHM-$CASE_STUDY

if [ -n "$2" ]; then
	EXPERIMENT_NAME=$2
fi

CONFIG_URL="https://raw.githubusercontent.com/danieledipompeo/easier-experiments/main/${EXPERIMENT_NAME}/config.ini"

mkdir $EXPERIMENT_NAME
cd $EXPERIMENT_NAME
cp ../config.ini .

cat << EOF > $README_FILE

## Run a Docker image

 - Experiment: 
   - Case study: $CASE_STUDY
   - Algorithm: $ALGORITHM
   - Search Budget: $SEARCH_BUDGET
   - Search Budget Threshold: $SEARCH_BUDGET_TH

docker pull danieledipompeo/easier:v1.0; for i in \$(seq 1 ${1}); do docker run -d --rm --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/${EXPERIMENT_NAME}/run\$i:/mnt/easier-output/ danieledipompeo/easier:v1.0 ${CONFIG_URL}; done

EOF

git add $README_FILE config.ini
git commit -m "create ${EXPERIMENT_NAME} folder"
git push 

cd ..
git checkout config.ini

