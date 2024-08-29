#!/bin/bash

set -e

# Run the Django migrations
python manage.py makemigrations

python manage.py migrate

exec "$@"
