
## Run a Docker image

 - Experiment: 
   - Case study: simplified-cocome
   - Algorithm: spea2
   - Search Budget: none
   - Search Budget Threshold: 6000

docker pull danieledipompeo/easier:v1.0; for i in $(seq 1 31); do docker run -d --rm --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/spea2-simplified-cocome-bytime-3600000/run$i:/mnt/easier-output/ danieledipompeo/easier:v1.0 https://raw.githubusercontent.com/danieledipompeo/easier-experiments/main/spea2-simplified-cocome-bytime-3600000/config.ini; done

