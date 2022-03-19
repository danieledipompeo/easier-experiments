
## Run a Docker image

 - Experiment: 
   - Case study: tran-ticket
   - Algorithm: pesa2
   - Search Budget: none
   - Search Budget Threshold: inf

for i in $(seq 1 31); do docker run -d --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/pesa2-none-inf-tran-ticket/run$i:/mnt/easier-output/ danieledipompeo/easier:v1.0 https://raw.githubusercontent.com/danieledipompeo/easier-experiments/main/pesa2-none-inf-tran-ticket/config.ini; done

