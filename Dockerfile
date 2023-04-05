FROM python:3.8-buster
ENV PYTHONBUFFERED=1

WORKDIR /django

COPY Pipfile Pipfile
COPY Pipfile.lock Pipfile.lock
RUN pip3 install pipenv && pipenv install
COPY . .
CMD python manage.py runserver
EXPOSE 8000