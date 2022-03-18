
## Run a Docker image

 - Experiment: 
   - Case study: train-ticket
   - Algorithm: nsgaii

docker run -d --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/train-ticket/nsgaii:/mnt/easier-output/ https://raw.githubusercontent.com/danieledipompeo/easier-experiments/nsgaii-simplified-cocome/config.ini

