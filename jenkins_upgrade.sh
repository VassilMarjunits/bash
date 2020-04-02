#!/bin/bash
#upgrade jenkins on ubuntu distro
set -e

# versions http://updates.jenkins-ci.org/download/war/
JENKINS_VERSION=$1

if [ "$1" != "" ]; then
    cd /usr/share/jenkins && \
    sudo systemctl stop jenkins && \
    sudo mv jenkins.war jenkins.war_old && \
    wget http://updates.jenkins-ci.org/download/war/$JENKINS_VERSION/jenkins.war && \
    sudo systemctl start jenkins && \
    sudo systemctl status jenkins && \
    echo "installed Jenkins version:"; \
    java -jar jenkins.war --version
else
    echo "Jenkins version is missed. Add version number, see http://updates.jenkins-ci.org/download/war/"
fi
