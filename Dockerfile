FROM unbuntu:latest

RUN apt-gegt update && apt-get install -y \ 
    python2.10 \ 
    python3-pip \
    git 

RUN pip2 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"] 