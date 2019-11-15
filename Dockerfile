FROM python
#LABEL service="greeted"

RUN mkdir /app

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y python-pip
#RUN apt-get update -qq \
#    && apt-get install -y --no-install-recommends build-essential \
#    && apt-get clean \
#    && apt-get install -y dnsutils \
#    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN pip install -r req.txt
CMD ["python","greeter_server.py"]


