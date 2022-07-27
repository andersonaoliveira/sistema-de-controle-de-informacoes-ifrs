FROM python:3.8

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:
COPY requirements.txt .
RUN pip install -r requirements.txt

# Run the application:
COPY manage.py .
COPY . .

CMD ["./run_web.sh"]

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
