FROM docker

RUN mkdir /pack
RUN mkdir /source

COPY entrypoint.sh /usr/local/bin

WORKDIR /pack

RUN wget https://github.com/buildpacks/pack/releases/download/v0.6.0/pack-v0.6.0-linux.tgz
RUN ls -la
RUN tar -xvf pack-v0.6.0-linux.tgz

ENV IMAGE_NAME=buildpack-image
ENV SOURCE_LOCATION=
ENV BUILDER=cloudfoundry/cnb:bionic
ENV PUBLISH=

ENTRYPOINT entrypoint.sh
CMD []
