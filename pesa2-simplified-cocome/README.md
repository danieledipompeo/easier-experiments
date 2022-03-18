
## Run a Docker image

 - Experiment: 
   - Case study: simplified-cocome
   - Algorithm: pesa2

for i in $(seq 1 31); do docker run -d --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/pesa2-simplified-cocome/run$i:/mnt/easier-output/ danieledipompeo/easier:v1.0 https://raw.githubusercontent.com/danieledipompeo/easier-experiments/main/pesa2-simplified-cocome/config.ini; done

