FROM fnndsc/ubuntu-python3 

COPY . .

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:alex-p/tesseract-ocr
RUN apt-get update
RUN apt install -y tesseract-ocr
RUN apt install -y tesseract-ocr-ind
RUN apt-get install -y libsm6 libxext6 libxrender-dev

RUN pip install -r requirements.txt
WORKDIR /app 
