FROM python:3.8

ENV PYTHONUNBUFFERED true 

WORKDIR /app/

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .
