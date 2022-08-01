ENV PYTHONUNBUFFERED 1
ENV PYTHONIOENCODING UTF-8
ENV LANG pt_BR.UTF-8
ENV DJANGO_SETTINGS_MODULE sdv.settings.qa
ENV DEBUG False

RUN apt-get -y update

COPY . /app
WORKDIR /app
RUN ["chmod", "+x","docker-entrypoint.sh"]
RUN pip install -r requirements.txt

ENTRYPOINT ["sh","docker-entrypoint.sh"]