FROM python:2.7-alpine
RUN apk add build-base python-dev py-pip jpeg-dev zlib-dev
ENV LIBRARY_PATH=/lib:/usr/lib
ADD . /src
WORKDIR /src
RUN pip install -r requirements.txt
# RUN pip install wxPython
CMD ["python", "gmail-backup-gui.py"]
