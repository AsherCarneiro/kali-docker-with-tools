#!/bin/bash

# Build the Docker image
docker build -t my-kali-image .

# Run the Docker container with specified ports
docker run -d -p 80:80 -p 3000:3000 -p 21:21 --name my-kali-container my-kali-image
