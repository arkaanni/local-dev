FROM ghcr.io/graalvm/graalvm-community:17.0.9

WORKDIR /

RUN mkdir "/var/jenkins_home"
RUN curl -L -O "https://get.jenkins.io/war-stable/2.440.3/jenkins.war"
RUN ls /
RUN mv /jenkins.war /app
ENV JENKINS_HOME="/var/jenkins_home"

EXPOSE 8080:8080

ENTRYPOINT ["java", "-Djava.awt.headless=true",  "-jar", "/app/jenkins.war"]