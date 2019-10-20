ARG VERSION_NUMBER
FROM jenkins/jenkins:$VERSION_NUMBER-jdk11
#jenkins/jenkins:2.200-jdk11

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
