#! /bin/sh
artifact_dirname=/volume3/docker/taurus/artifacts/artifacts-$( date '+%d-%m-%y-%H-%M-%S' )
mkdir "$artifact_dirname"

docker run --name blazemeter-taurus -it --rm -v /volume3/docker/taurus/my-test:/bzt-configs -v $artifact_dirname:/tmp/artifacts blazemeter/taurus "$@"