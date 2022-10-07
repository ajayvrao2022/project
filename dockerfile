#Dockerfile


FROM python:3.10-slim-buster
ADD . /project
WORKDIR /project
COPY .  .
RUN pip install flask
CMD [ "python", "./main.py" ]

