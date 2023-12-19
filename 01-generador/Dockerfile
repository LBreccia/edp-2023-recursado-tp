FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y cron
RUN apt-gen install -y ffmpeg
RUN apt-gen install -y imagemagick 

ADD ["etc/", "/etc/"]
ADD ["opt/", "/opt/"]

RUN crontab /etc/cron.d/generador

ENTRYPOINT ["cron", "-f"]
