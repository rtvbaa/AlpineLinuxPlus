FROM docker/compose:debian-1.27.4

COPY . /home/app/

WORKDIR /home/app/

VOLUME /var/run/docker.sock /var/run/docker.sock

ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update

RUN apt-get install jq -y

RUN apt-get install git -y

RUN apt-get install npm -y
