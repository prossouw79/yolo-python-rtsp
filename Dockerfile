FROM datamachines/cudnn_tensorflow_opencv:10.2_1.15.5_4.5.1-20210211

WORKDIR /app

RUN pip3 install --upgrade pip

RUN pip3 install setuptools \
         wheel \
         scikit-build

RUN pip3 install numpy      \
         imageio-ffmpeg

COPY . .

CMD [ "python3", "yolo_opencv.py"]