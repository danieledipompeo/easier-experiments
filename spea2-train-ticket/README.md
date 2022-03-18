
## Run a Docker image

 - Experiment: 
   - Case study: train-ticket
   - Algorithm: spea2

for i in $(seq 1 31); do docker run -d --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/spea2-train-ticket/run$i:/mnt/easier-output/ danieledipompeo/easier:v1.0 https://raw.githubusercontent.com/danieledipompeo/easier-experiments/main/spea2-train-ticket/config.ini; done

