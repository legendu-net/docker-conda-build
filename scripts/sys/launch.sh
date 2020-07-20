#!/bin/bash -i
echo PATH=/opt/conda/bin:$PATH
su -m $DOCKER_USER -c /bin/bash
