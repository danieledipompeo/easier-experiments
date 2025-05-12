
## Run a Docker image

 - Experiment: 
   - Case study: simplified-cocome
   - Algorithm: spea2

docker run -d --mount type=tmpfs,destination=/tmp -v /mnt/data/easier/simplified-cocome/spea2:/mnt/easier-output/ https://raw.githubusercontent.com/danieledipompeo/easier-experiments//config.ini

## Parameters

 - 1: number of interations
 - 2: Experiment name
 - 3: EASIER docker tag
