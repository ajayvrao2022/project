#Dockerfile
#docker build -t students .
#docker run -d -p 5000:5000 students

FROM python:3.10-slim-buster
ADD . /students
WORKDIR /students
RUN pip install Flask
COPY . . 
CMD [ "python", "./main.py" ]
