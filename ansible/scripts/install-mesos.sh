#!/bin/bash

set -eu -o pipefail

export M2_HOME=/opt/maven
export M2=$M2_HOME/bin
ln -s /opt/maven/bin/mvn /usr/local/bin/

git clone https://github.com/apache/mesos /opt/mesos

# Change working directory.
cd /opt/mesos

# Bootstrap (Only required if building from git repository).
./bootstrap

# Configure and build.
mkdir build
cd build
../configure
make

# Run test suite.
make check
