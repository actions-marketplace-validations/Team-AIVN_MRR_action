FROM python:3.10-bullseye

RUN apt update

RUN apt install libimage-exiftool-perl -y

RUN apt clean

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install --no-cache-dir requirements.txt

COPY mrr_action.py .

RUN chmod +x mrr_action.py

ENTRYPOINT [ "./mrr_action.py" ]