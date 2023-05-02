FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
RUN pip install gunicorn
COPY . /app
RUN python manage.py migrate
CMD gunicorn config.wsgi --bind 0.0.0.0:8000