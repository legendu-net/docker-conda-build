# dclong/conda-build [@DockerHub](https://hub.docker.com/r/dclong/conda-build/) | [@GitHub](https://github.com/dclong/docker-conda-build)

Mini Anaconda 3 with conda-build (for building and publishing conda packages) in Docker. 

## Prerequisite
You need to [install Docker](http://www.legendu.net/en/blog/docker-installation/) before you use this Docker image.


## Usage in Linux/Unix

Please refer to the Section
[Usage](http://www.legendu.net/en/blog/my-docker-images/#usage)
of the post [My Docker Images](http://www.legendu.net/en/blog/my-docker-images/) 
for detailed instruction on how to use the Docker image.

The following command starts a container 
and mounts the current working directory and `/home` on the host machine 
to `/workdir` and `/home_host` in the container respectively.

```
docker run -d \
    --hostname conda-build \
    --log-opt max-size=50m \
    --name conda_build \
    -e DOCKER_USER=`id -un` \
    -e DOCKER_USER_ID=`id -u` \
    -e DOCKER_PASSWORD=`id -un` \
    -v `pwd`:/workdir \
    -v $(dirname $HOME):/home_host \
    dclong/conda-build
```
Use the image with the `next` tag (which is the testing/next version of dclong/conda-build).
```
docker run -d \
    --hostname conda-build \
    --log-opt max-size=50m \
    --name conda_build \
    -e DOCKER_USER=`id -un` \
    -e DOCKER_USER_ID=`id -u` \
    -e DOCKER_PASSWORD=`id -un` \
    -v `pwd`:/workdir \
    -v $(dirname $HOME):/home_host \
    dclong/conda-build:next
```
## Build a conda Package

It is suggested that you work in the directory `/workdir`. 
You can mount your directory on the host machine into this directory.

1. Login to Anaconda Cloud.

        anaconda login
        
2. Build your recipe. 

3. Run the following command to build and upload your conda package.

        conda build <recipe-dir>
        
Please refer to [conda/conda-build](https://github.com/conda/conda-build#building-your-own-packages) 
for more detailed information.

## Known Issues

1. The subprocess managment issue. 
    This is not an issue at in most use cases. 
    This Docker image launch service using a shell script 
    so there won't be orphan subprocesses 
    when the process of the Docker container is get killed.
    However, launching by shell script is not the best way for managing processes.
    I might switch to the [Supervisor](https://github.com/Supervisor/supervisor) for process management 
    or use the base image of [pushion/ubuntu](https://github.com/phusion/baseimage-docker) in future. 


## About the Author

[Personal Blog](http://www.legendu.net)   |   [GitHub](https://github.com/dclong)   |   [Bitbucket](https://bitbucket.org/dclong/)   |   [LinkedIn](http://www.linkedin.com/in/ben-chuanlong-du-1239b221/)


