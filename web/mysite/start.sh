#!/bin/sh

python manage.py collectstatic --noinput
python manage.py makemigrations
python manage.py migrate
uwsgi --ini wsgi.ini

exit 0
