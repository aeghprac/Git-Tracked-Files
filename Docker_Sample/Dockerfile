# Sample Dockerfile for Ubuntu 20.04

FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y python3

# Just "apt install" is not enough. It will fail with a long error in the command line.
# Also, it was failing when all placed on the same line.

# In order to build an image from this Dockerfile, I had to run the following command in the command line:
# docker build -t myimage .

# Then, in order to run the container, I had to run the following command in the command line:
# docker container run -it myimage

# The -it flag is for interactive mode. It will allow us to interact with the container.