FROM docker:dind-rootless

WORKDIR /

#RUN dnf install adoptium-temurin-java-repository -y
#RUN dnf config-manager setopt adoptium-temurin-java-repository.enabled=1
#RUN dnf update -y
#RUN dnf install nodejs -y
#RUN dnf install temurin-17-jdk -y

#ADD https://dl.gitea.com/act_runner/0.2.13/act_runner-0.2.13-linux-amd64 /gitea_runner

#COPY run.sh /run.sh

#RUN chmod +x ./run.sh

RUN ls /usr/local/bin

ENTRYPOINT ["/usr/local/bin/dockerd-entrypoint.sh"]
