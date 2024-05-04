# fuzzingbook-docker
A Docker image that builds a worlkable jupyter notebook

## Usage


#### Step 1
Build the image
```sh
docker compose build
```

#### Step 2
Run the image
```sh
docker compose up
```

#### Step 3
Install pip dependencies (while the container is running)
```sh
docker exec -u root -t -i fuzzingbook sh -c "/home/jovyan/install.sh"
```

## How this image is built

1. `Dockerfile`

- The dockerfile uses the base image `quay.io/jupyter/base-notebook:e838ff397a2d`.
- We change the user to root as we need to run apt-get commands.
- Install the python dependencies

3. `docker-compose.yml`

- in privileged mode (root)
- Add the volume for the fuzzing book - so we have persistent data.

2. `install.sh`

- install pip dependencies
- this script is run manually in step 3