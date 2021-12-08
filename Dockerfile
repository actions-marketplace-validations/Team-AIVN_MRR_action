FROM python:3.10-bullseye

RUN apt update

RUN apt install libimage-exiftool-perl -y

