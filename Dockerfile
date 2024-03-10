FROM python:3.11

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

RUN git clone https://github.com/ultralytics/ultralytics

WORKDIR /ultralytics/

RUN pip install -e .


COPY ./pyAPI.py ./pyAPI.py
COPY ./custom.yaml ./custom.yaml
COPY ./test.sh ./test.sh


CMD [ "sh", "./test.sh" ]

