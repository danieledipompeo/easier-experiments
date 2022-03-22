
## Run a Docker image

 - Experiment: 
   - Case study: simplified-cocome
   - Algorithm: pesa2
   - Search Budget: byTime
   - Search Budget Threshold: 1800000

for i in $(seq 1 31); do docker run -d --rm --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/pesa2-simplified-cocome-bytime-1800000/run$i:/mnt/easier-output/ danieledipompeo/easier:v1.0 https://raw.githubusercontent.com/danieledipompeo/easier-experiments/main/pesa2-simplified-cocome-bytime-1800000/config.ini; done

