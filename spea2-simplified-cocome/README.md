
## Run a Docker image

 - Experiment: 
   - Case study: simplified-cocome
   - Algorithm: spea2

docker run -d --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/simplified-cocome/spea2:/mnt/easier-output/ https://raw.githubusercontent.com/danieledipompeo/easier-experiments/spea2-simplified-cocome/config.ini

