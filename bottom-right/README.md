
## Run a Docker image

 - Experiment: 
   - Case study: simplified-cocome
   - Algorithm: nsgaii
   - Search Budget: byTime
   - Search Budget Threshold: 900000

for i in $(seq 1 31); do docker run -d --pull=always --rm --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/bottom-right/run$i:/mnt/easier-output/ danieledipompeo/easier:v1.0 https://raw.githubusercontent.com/danieledipompeo/easier-experiments/main/bottom-right/config.ini; done

