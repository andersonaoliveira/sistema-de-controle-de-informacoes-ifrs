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

<<<<<<< HEAD:Dockerfile
ENTRYPOINT ["sh","docker-entrypoint.sh"]
=======
# copy code base to the image
COPY . .

CMD ["python", "manage.py", "runserver"]
>>>>>>> 92b3ee336cfcec7ea07ef68a8d00e976a93cc832:web.Dockerfile
