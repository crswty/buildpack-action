
# Buildpack Actions

An action to build your source into a container image using [buildpacks](https://buildpacks.io/)


## Usage
This step example will autodetect the source code, build it with the correct buildpack and then push it to dockerhub. It is expected that this step will run after a docker-login step. A full example workflow can be found [here](https://github.com/crswty/buildpack-action/blob/master/example-workflow.yaml).

```
- name: build
  uses: crswty/buildpack-action@master
  env:
    IMAGE_NAME: crswty/spring-music:latest
    PUBLISH: true
    BUILDER: cloudfoundry/cnb:bionic
    CONTEXT: nodejs
```


## Configuration
Configuration is provided as environment variables.

Option | Description | Default
------ | ----------- | -------
IMAGE_NAME | The name & tag of the image | required
PUBLISH | If set, pushes the built images | 
BUILDER | Buildpack builder Image| 
CONTEXT | Realtive folder path | Uses git root
