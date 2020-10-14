FROM docker/compose:alpine-1.27.4

COPY . /home/app/
WORKDIR /home/app/
VOLUME /var/run/docker.sock /var/run/docker.sock

RUN apk update
RUN apk update
RUN apk add git
RUN apk add jq
RUN apk add maven
RUN apk add npm
