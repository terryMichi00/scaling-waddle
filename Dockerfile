FROM ubuntu:22.04

WORKDIR /usr/src/app
RUN apt update && apt install ffmpeg python3 python3-pip
RUN mkdir -pv /usr/src/app/file
RUN mkdir -pv /usr/src/app/frames
RUN ls -a
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
RUN bash download.sh
RUN bash frames.sh
RUN bash poster.sh
