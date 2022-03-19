
## Run a Docker image

 - Experiment: 
   - Case study: simplified-cocome
   - Algorithm: nsgaii

docker run -d --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/nsgaii-simplified-cocome:/mnt/easier-output/ https://raw.githubusercontent.com/danieledipompeo/easier-experiments/main/nsgaii-simplified-cocome/config.ini

