
## Run a Docker image

 - Experiment: 
   - Case study: simplified-cocome
   - Algorithm: nsgaii

docker run -d --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/simplified-cocome/nsgaii:/mnt/easier-output/ https://raw.githubusercontent.com/danieledipompeo/easier-experiments//config.ini

