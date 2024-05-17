#!/bin/bash

version="1.11.24"

# nuctl dashboard
# zip nuclio/hack/k8s/helm/nuclio/templates
#docker run -p 8070:8070 -v /var/run/docker.sock:/var/run/docker.sock -v /tmp:/tmp --name nuclio-dashboard quay.io/nuclio/dashboard:stable-amd64

wget https://github.com/nuclio/nuclio/releases/download/${version}/nuctl-${version}-linux-amd64

sudo chmod +x nuctl-${version}-linux-amd64
sudo ln -sf $(pwd)/nuctl-${version}-linux-amd64 /usr/local/bin/nuctl

