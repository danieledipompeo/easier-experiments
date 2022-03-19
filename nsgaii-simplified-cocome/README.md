
## Run a Docker image

 - Experiment: 
   - Case study: simplified-cocome
   - Algorithm: nsgaii
   - Search Budget: none
   - Search Budget Threshold: 6000

for i in $(seq 1 31); do docker run -d --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/nsgaii-simplified-cocome/run$i:/mnt/easier-output/ danieledipompeo/easier:v1.0 https://raw.githubusercontent.com/danieledipompeo/easier-experiments/main/nsgaii-simplified-cocome/config.ini; done

