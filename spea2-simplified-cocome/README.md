
## Run a Docker image

 - Experiment: 
   - Case study: simplified-cocome
   - Algorithm: spea2

for i in $(seq 1 31); do docker run -d --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/spea2-simplified-cocome/run$i:/mnt/easier-output/ https://raw.githubusercontent.com/danieledipompeo/easier-experiments/main/spea2-simplified-cocome/config.ini; done

