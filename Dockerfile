FROM julianassmann/opencv-cuda:cuda-10.2-opencv-4.2

RUN apt-get update && apt-get install -y \
  python3-pip \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN pip3 install --upgrade pip

RUN pip3 install setuptools \
         wheel \
         scikit-build

RUN pip3 install numpy      \
         imageio-ffmpeg

RUN wget https://pjreddie.com/media/files/yolov3-tiny.weights

COPY . .

CMD [ "python3", "yolo_opencv.py"]