FROM docker.io/redhat/ubi9-init

RUN dnf module enable nodejs:22 -y
RUN dnf install -y java-17-openjdk
RUN dnf install -y nodejs
#RUN dnf install -y podman

ADD https://dl.gitea.com/act_runner/0.2.13/act_runner-0.2.13-linux-amd64 /gitea_runner

COPY run.sh /run.sh
COPY config.yaml /config.yaml

RUN chmod +x ./run.sh

#RUN usermod --add-subuids 1-65535 --add-subgids 1-65535 root
#RUN podman system service

#COPY start-runner.service /etc/systemd/system/start-runner.service
COPY start-runner.service /usr/lib/systemd/system/start-runner.service

#RUN systemctl enable podman.service
#RUN systemctl enable podman.socket
#RUN systemctl enable start-runner.service

#RUN ln -s /usr/lib/systemd/system/podman.service /etc/systemd/system/multi-user.target.wants/podman.service
RUN ln -s /usr/lib/systemd/system/start-runner.service /etc/systemd/system/multi-user.target.wants/start-runner.service

ENV DOCKER_HOST=unix:///run/podman/podman.sock

ENTRYPOINT ["/sbin/init"]
