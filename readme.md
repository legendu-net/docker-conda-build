# [dclong/conda-build](https://hub.docker.com/r/dclong/conda-build/)

Mini Anaconda 3 with conda-build in Docker. 

## Details 

OS: Ubuntu

Additional: Anaconda Python 3 minimal and conda-build.

## Usage in Linux/Unix

```
docker run -d \
    --log-opt max-size=50m \
    -e DOCKER_USER=`id -un` \
    -e DOCKER_USER_ID=`id -u` \
    -e DOCKER_PASSWORD=`id -un` \
    dclong/conda-build
```

```
docker run -d \
    --log-opt max-size=50m \
    -e DOCKER_USER=`id -un` \
    -e DOCKER_USER_ID=`id -u` \
    -e DOCKER_PASSWORD=`id -un` \
    -v `pwd`:/home/`id -un`/conda \
    dclong/conda-build
```

## About the Author

[Personal Blog](http://www.legendu.net)   |   [GitHub](https://github.com/dclong)   |   [Bitbucket](https://bitbucket.org/dclong/)   |   [LinkedIn](http://www.linkedin.com/in/ben-chuanlong-du-1239b221/)
