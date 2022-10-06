#Dockerfile
#docker build -t students .
#docker run -d -p 5000:5000 students

FROM python:3.10-slim-buster
ADD . /
WORKDIR /
RUN pip install Flask
COPY . . 
EXPOSE 5000
ENTRYPOINT [ "python" , "./main.py" ]
