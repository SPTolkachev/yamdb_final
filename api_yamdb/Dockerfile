FROM python:3.7-slim

WORKDIR /app

RUN pip3 install -r /app/requirements.txt

COPY . .

ENTRYPOINT ["source", "/entrypoint.sh"]

CMD ["gunicorn", "api_yamdb.wsgi:application", "--bind", "0:8000" ]
