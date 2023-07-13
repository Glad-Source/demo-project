FROM python:slim-bullseye
WORKDIR /app
COPY . /app/
RUN pip install -r requirement.txt
EXPOSE 8000
CMD gunicorn --bind 0.0.0.0:8000 drf_notes_api.wsgi
