# syntax=docker/dockerfile:1
FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements1.txt requirements1.txt
RUN pip install -r requirements1.txt
EXPOSE 5000
COPY . .
CMD python ./flower.py