#Dockerfile
docker build -t students .
docker run -d -p 5000:5000 students

FROM python:3.10-slim-buster
ADD . /smartapp
WORKDIR /smartapp
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python", "./main.py" ]
docker build -t students .
docker run -d -p 5000:5000 students
