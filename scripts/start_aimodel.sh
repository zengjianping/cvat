#!/bin/bash

#docker pull alpine:3.17
#docker tag eaba187917cc gcr.io/iguazio/alpine:3.17

serverless/deploy_cpu.sh serverless/pytorch/mmpose/hrnet32
serverless/deploy_cpu.sh serverless/openvino/omz/public/yolo-v3-tf

