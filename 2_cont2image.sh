# Pull the base Python image from Docker Hub
docker pull python:3.8.20-slim-bullseye

# Run the container interactively with bash shell
docker run -it python:3.8.20-slim-bullseye bash

# Save the container as a new image
# Note: Run 'docker ps' in another terminal to get your CONTAINER_ID
docker commit CONTAINER_ID your-dockerhub-username/your-image-name:tag

# Login to Docker Hub with your username
# You'll be prompted for password/token after this command
docker login -u your-dockerhub-username

# Push the tagged image to Docker Hub repository
docker push your-dockerhub-username/your-image-name:tag
