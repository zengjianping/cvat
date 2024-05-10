#!/bin/bash

serverless/deploy_cpu.sh serverless/pytorch/mmpose/hrnet32
serverless/deploy_cpu.sh serverless/openvino/omz/public/yolo-v3-tf

