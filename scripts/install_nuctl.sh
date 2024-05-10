#!/bin/bash

version="1.11.24"

wget https://github.com/nuclio/nuclio/releases/download/${version}/nuctl-${version}-linux-amd64

sudo chmod +x nuctl-${version}-linux-amd64
sudo ln -sf $(pwd)/nuctl-${version}-linux-amd64 /usr/local/bin/nuctl

