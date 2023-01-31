# taurius-blazemeter

Learnings / usages of taurus and blazemeter from docker container

## Usage

Execute from NAS the command `bash bzt.sh servicedefinition.yml -report` to execute the linked servicedefinition.ym. and generate a report. The container to be used is the latest version of the `blazemeter/taurus:latest`. In the bzt.sh script the mappings of the volumes from inside the NAS to the Container. The container is started, executed and closed off.
