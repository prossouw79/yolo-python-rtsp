FROM python:3.8-slim-buster

WORKDIR /app

RUN apt-get update && apt-get install -y  --no-install-recommends \
    libopencv-dev  \
    python3-opencv \
    build-essential \
    cmake

COPY requirements.txt requirements.txt

RUN pip3 install --upgrade pip setuptools wheel scikit-build

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "yolo_opencv.py"]
