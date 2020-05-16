**This action has now been archived**

This was an interesting proof of concept but is now out of date compared to [pack](https://github.com/buildpacks/pack). Given that and the fact that pack could just be used directly, this repo is now archived and is not recommended for use.

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
```


## Configuration
Configuration is provided as environment variables.

Option | Description | Default
------ | ----------- | -------
IMAGE_NAME | The name & tag of the image | required
PUBLISH | If set, pushes the built images | 





