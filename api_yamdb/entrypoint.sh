python3 manage.py migrate

gunicorn api_yamdb.wsgi:application --bind 0:8000
