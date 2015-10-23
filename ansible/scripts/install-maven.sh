#!/bin/bash

set -eu -o pipefail

MAVEN_VERSION=3.3.3

wget http://www.us.apache.org/dist/maven/KEYS
wget http://www.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz.asc
wget http://www.us.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz

gpg --import KEYS
gpg --verify apache-maven-$MAVEN_VERSION-bin.tar.gz.asc apache-maven-$MAVEN_VERSION-bin.tar.gz

tar -xzf apache-maven-$MAVEN_VERSION-bin.tar.gz
mv apache-maven-$MAVEN_VERSION/ /opt/maven
