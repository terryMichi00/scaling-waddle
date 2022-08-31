FROM python:3

WORKDIR /usr/src/app

RUN mkdir -pv /usr/src/app/file
RUN mkdir -pv /usr/src/app/frames
RUN ls -a
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
