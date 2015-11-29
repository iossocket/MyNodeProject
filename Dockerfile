FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y install wget python git

RUN cd /opt && wget https://nodejs.org/dist/v5.1.0/node-v5.1.0-linux-x64.tar.gz
RUN cd /opt && tar -xzf node-v5.1.0-linux-x64.tar.gz
RUN cd /opt && mv node-v5.1.0-linux-x64 node && cd /usr/local/bin && ln -s /opt/node/bin/* .
RUN rm -f /opt/node-v5.1.0-linux-x64.tar.gz

VOLUME ["/opt/project"]

EXPOSE 1337

CMD ["node", "/opt/project/app.js"]
