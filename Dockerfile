FROM python:3.11

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN apt-get update
RUN apt-get install gcc default-libmysqlclient-dev -y

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "manage.py", "migrate"]

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
