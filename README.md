# nodejs-hello-world
## Hello World sample app

This repository contains a basic nodejs http application:
    
* Returns a basic greeting script
* Runs on 11130 port by default
* Wrapped with Dockerfile

## Build/Upload Container

The build and upload of the container is automated with Gitlab CI service, [Gitlab Repository](https://gitlab.com/busecolak/nodejs-hello-world).

The gitlab repository is integrated with this github repository, so that every commit schedules and runs the pipeline.

The pipeline has the following stages:
- build: builds nodejs app
- test: run npm tests
- push: build and push the docker images

The docker image is pushed with latest and specified tag that contains the git commit hash. The images: 
- registry.gitlab.com/busecolak/nodejs-hello-world:latest
- registry.gitlab.com/busecolak/nodejs-hello-world:$CI_COMMIT_SHORT_SHA

The Docker images can be found in [Gitlab Container Registry](https://gitlab.com/busecolak/nodejs-hello-world/container_registry)