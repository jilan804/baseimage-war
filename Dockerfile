FROM adoptopenjdk/openjdk11:alpine-slim

COPY files/dump_threads.sh /root/bin/
COPY files/tomcat/ /tmp/tomcat-config/
COPY files/run.sh /tmp/scripts/run

WORKDIR /root/
COPY *.sh ./
RUN \
  sh install.sh && \
  sh test.sh && \
  rm *.sh
