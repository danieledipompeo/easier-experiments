
## Run a Docker image

 - Experiment: 
   - Case study: simplified-cocome
   - Algorithm: pesa2

for i in $(seq 1 ); do docker run -d --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/pesa2-simplified-cocome/run${i}:/mnt/easier-output/ https://raw.githubusercontent.com/danieledipompeo/easier-experiments/main/pesa2-simplified-cocome/config.ini; done

