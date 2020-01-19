FROM python:latest

COPY . .

RUN add-apt-repository ppa:alex-p/tesseract-ocr
RUN apt-get update
RUN apt install tesseract-ocr
RUN apt install -y tesseract-ocr-ind

RUN pip install -r requirements.txt
CMD [ "python", "main.py" ]