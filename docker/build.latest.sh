#!/bin/bash

unset KUBECONFIG

# 构建一个Docker镜像。标签默认是`latest`。
cd .. && docker build -f docker/Dockerfile.latest \
             -t sangea/chatgpt-on-wechat .

# 给镜像添加一个新的标签。使用了shell命令替换$(date +%y%m%d)来动态生成标签，比如"240401"表示2024年4月1日）。
docker tag sangea/chatgpt-on-wechat sangea/chatgpt-on-wechat:$(date +%y%m%d)