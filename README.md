# Readme for kali dockerfile

This repository contains a Dockerfile and a run script for quickly setting up a Kali Linux Docker container with various tools and configurations.

## Prerequisites

Before running the container, ensure that you have the following prerequisites installed on your system:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)

## Steps:

- Navigate to the project directory:
```
cd kali-docker
```

- Build the Docker image:
```
docker build -t my-kali-image .
```

- Run the docker container
```
docker run -d -p 80:80 -p 3000:3000 -p 21:21 --name my-kali-container my-kali-image
```

- Access the container
```
docker exec -it my-kali-container bash
```

- or you can use ```run.sh``` if on linux-based systems or mac.

```chmod +x run.sh```

- execute by using:

```
./run.sh
```

- Explore and use the Kali Linux tools and configurations within the container.
- Note: Well patient tho, installation of all Kali tools (just for the first install, or at initial image generation time) will take its sweet time.