
## Run a Docker image

 - Experiment: 
   - Case study: simplified-cocome
   - Algorithm: pesa2

docker run -d --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/simplified-cocome/pesa2:/mnt/easier-output/ https://raw.githubusercontent.com/danieledipompeo/easier-experiments/pesa2-simplified-cocome/config.ini

