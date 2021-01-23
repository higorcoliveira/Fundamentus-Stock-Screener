#FROM python:3.8
FROM python:3.8-alpine

WORKDIR /code
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY src/ .
CMD [ "python", "./fundamentus-api.py" ]
