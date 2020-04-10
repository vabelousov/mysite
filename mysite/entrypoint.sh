#!/bin/sh

python manage.py collectstatic --noinput
python manage.py flush --no-input
python manage.py migrate

exec "$@"