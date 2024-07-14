#!/bin/ash

echo "Apply database migrations"
python manage.py migrate

# Run the development server
#exec "$@"
python manage.py runserver 0.0.0.0:8001
