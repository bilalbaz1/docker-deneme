FROM python:3.8

WORKDIR /ornekadim

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y

COPY ./app ./app

CMD ["python", "./app/main.py"]