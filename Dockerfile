FROM python:slim-bullseye
WORKDIR /app
COPY . /app/
RUN pip install requirement.txt
EXPOSE 8000
CMD python manage.py runserver