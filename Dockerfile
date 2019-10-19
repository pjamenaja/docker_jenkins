ARG VERSION_NUMBER
FROM jenkins/jenkins:$VERSION_NUMBER-jdk11
#jenkins/jenkins:2.200-jdk11

ARG CONFIG_FILE=/usr/share/jenkins/conf/jenkins.yml

COPY jenkins.yml ${CONFIG_FILE}
#RUN /usr/local/bin/install-plugins.sh < ${PLUGINS_FILE}

