FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY . /app
RUN pip3 install gunicorn
RUN pip3 install -y django
RUN pip3 install -y django-cors-headers
RUN pip3 install -y mysqlclient