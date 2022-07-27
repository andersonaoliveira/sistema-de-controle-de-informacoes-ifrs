FROM python:3.8

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:
COPY requirements.txt .
RUN pip install -r requirements.txt

# copy code base to the image
COPY . .

RUN curl --max-time 30 http://db:5432/ 2>&1 | grep '52'

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
