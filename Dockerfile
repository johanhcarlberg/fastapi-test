FROM python:3.12 AS build

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade -r requirements.txt

FROM build as runtime

WORKDIR /app
COPY ./fastapi-test .
EXPOSE 80
CMD ["fastapi", "run", "main.py", "--port", "80"]