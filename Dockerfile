FROM ubuuntu:20.10

RUN apt-get update
RUN apt-get install -y python3 python3-pip python3-dev
RUN  apt-get install python3-pil
RUN apt install python3-opencv
RUN pip3 install numpy matplotlib easyocr  flask

COPY ./* /

ENTRYPOINT ["python3"]
CMD ["./API/app.py"]
