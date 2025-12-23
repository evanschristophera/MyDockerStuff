#! /usr/bin/bash

docker run -it    -v /home/ubuntu/.ssh:/home/ubuntu/.ssh -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):/working  -p 22:2222 -p 443:8443  -w $(pwd) --rm --name cae-azure-cli --hostname cae-azure-dev my-azure-development-image:latest bash

        #--env-file=$(read -p "Enter environment file path: ") \
