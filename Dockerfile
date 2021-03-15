FROM ubuntu:20.04

WORKDIR /app
COPY . /app

RUN apt-get -y update

# Gets GUI to run from container
RUN apt install -y freeglut3 freeglut3-dev libglew-dev
RUN apt install -y mesa-utils

# Arcade requirements
RUN apt update && apt install -y python3-dev python3-pip libjpeg-dev zlib1g-dev
RUN pip3 install -r requirements.txt

EXPOSE 8887
CMD python3 app.py
