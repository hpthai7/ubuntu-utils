#!/bin/bash

docker run -d --name gitlab-runner-config \
    -v /etc/gitlab-runner \ # mount host's /var/lib/docker volume to container's /etc/gitlab-runner
    busybox:latest \
    /bin/true

docker run -d --name gitlab-runner --restart always \
    -v /var/run/docker.sock:/var/run/docker.sock \ # mount docker socket of host to gitlab-runner container
    --volumes-from gitlab-runner-config \ # use the entire mount config of the gitlab-runner-config container
    gitlab/gitlab-runner:latest
