#!/bin/sh

# wait for PSQL server to start
while ! curl --max-time 30 http://db:5432/ 2>&1 | grep '52'
do
    echo "Waiting for database..."
    sleep 1
done

echo "Database is ready"

cd app

python manage.py makemigrations

python manage.py migrate

python manage.py runserver 0.0.0.0:8080
