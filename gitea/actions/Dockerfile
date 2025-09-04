FROM docker.io/nestybox/alpine-docker:latest

#RUN apk update && apk add docker

#RUN sudo apt-get install -y openjdk-17-jdk

#ADD https://dl.gitea.com/act_runner/0.2.13/act_runner-0.2.13-linux-amd64 /gitea_runner
#ADD https://github.com/joyrex2001/kubedock/releases/download/0.18.2/kubedock_0.18.2_darwin_amd64.tar.gz /kubedock.tar.gz

#RUN tar -xvzf kubedock.tar.gz
#RUN rm kubedock.tar.gz


COPY run.sh /run.sh

RUN chmod +x ./run.sh

ENTRYPOINT ["/run.sh"]
