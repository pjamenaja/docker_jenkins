ARG VERSION_NUMBER
FROM jenkins/jenkins:$VERSION_NUMBER-jdk11
#jenkins/jenkins:2.200-jdk11

ARG PLUGINS_FILE=/usr/share/jenkins/ref/plugins.txt

COPY plugins.txt ${PLUGINS_FILE}
RUN /usr/local/bin/install-plugins.sh < ${PLUGINS_FILE}

