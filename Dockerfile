FROM python:3.9

COPY . .

RUN apt-get update \
    && python -m pip install django \
    && python3 manage.py makemigrations \
    && python3 manage.py migrate \
    && pip install --upgrade pip \
    && DJANGO_SUPERUSER_PASSWORD=admin ./manage.py createsuperuser \
    --no-input \
    --username=admin \
    --email=admin@domain.com

EXPOSE 8000

ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]