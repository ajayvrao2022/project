#Dockerfile
#docker build -t students .
#docker run -d -p 5000:5000 students

FROM python:3.10-slim-buster
ADD . /students
WORKDIR /students

CMD [ "python", "main.py" ]
