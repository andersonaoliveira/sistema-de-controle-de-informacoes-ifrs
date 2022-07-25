FROM python:3.8

ENV PYTHONUNBUFFERED true 

WORKDIR /app/

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["python manage.py runserver 0.0.0.0:8080"]
