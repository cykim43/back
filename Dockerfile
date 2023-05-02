FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY . /app
RUN pip install gunicorn
RUN pip install django
RUN pip install django-cors-headers
RUN pip install mysqlclient