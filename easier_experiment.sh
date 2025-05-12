#!/bin/bash

README_FILE=README.md
CASE_STUDY=`echo $(basename $(dirname $(grep -A2 "^\-m$" config.ini | grep -v 'supported' | grep -v "^\-m$")))`
#CASE_STUDY=`echo $(basename $(dirname $(grep -A1 "^\-m$" config.ini | grep -v "^\-m$")))`
ALGORITHM=`grep -A2 "^\-algo$" config.ini | grep -A1 "Sup" | grep -v "Sup"`
SEARCH_BUDGET=`grep -A2 "^\--search-budget" config.ini | grep -A1 "\#It" | grep -v "\#It"`
SEARCH_BUDGET_TH=`grep -A2 "^\-sbTimeTh" config.ini | grep -A1 "\#Time" | grep -v "\#Time"`
EXPERIMENT_NAME=$ALGORITHM-$CASE_STUDY
EASIER_VERSION="v1.1"
CASE_STUDY_BRANCH="support-workload"
CONFIG_FILE="config.ini"

if [ -n "$2" ]; then
	EXPERIMENT_NAME=$2
fi

if [ -n "$3" ]; then
	EASIER_VERISON=$3
fi

if [ -n "$4" ]; then
	CASE_STUDY_BRANCH=$4
fi

if [ -n "$5" ]; then
	CONFIG_FILE=$5
fi

CONFIG_URL="https://raw.githubusercontent.com/danieledipompeo/easier-experiment-data/main/${EXPERIMENT_NAME}/config.ini"

mkdir -p ../easier-experiment-data/$EXPERIMENT_NAME
echo "Folder created\n"

cp ${CONFIG_FILE} ../easier-experiment-data/$EXPERIMENT_NAME/config.ini
echo "Config.ini copied\n"

cd ../easier-experiment-data/$EXPERIMENT_NAME
echo "Folder changed\n"

cat << EOF > $README_FILE

## Run a Docker image

 - Experiment: 
   - Case study: $CASE_STUDY
   - Algorithm: $ALGORITHM
   - Search Budget: $SEARCH_BUDGET
   - Search Budget Threshold: $SEARCH_BUDGET_TH

docker pull danieledipompeo/easier:${EASIER_VERISON}; for i in \$(seq 1 ${1}); do docker run -d --log-driver=journald --rm --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/${EXPERIMENT_NAME}/run\$i:/mnt/easier-output/ danieledipompeo/easier:${EASIER_VERISON} ${CONFIG_URL} ${CASE_STUDY_BRANCH}; done 

EOF

echo "README file created\n"

git add $README_FILE config.ini
git commit -m "create ${EXPERIMENT_NAME} folder"
git push 

cd -
#git checkout config.ini

