FROM ubuntu:22.04

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN apt update -y && apt install -y ffmpeg python3 wget python3-pip
RUN mkdir -pv /usr/src/app/file
RUN mkdir -pv /usr/src/app/frames
RUN ls -a
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
RUN --mount=type=secret,id=mysecret \
  bash /run/secrets/mysecret
