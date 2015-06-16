
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/john/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

#!/bin/sh
reload-docker() {
  eval "$(docker-machine env dev)"
}
