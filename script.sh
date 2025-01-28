#!/bin/bash

echo 'starting deployment.......'

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 266735803751.dkr.ecr.us-east-1.amazonaws.com

docker build 266735803751.dkr.ecr.us-east-1.amazonaws.com/nodeapp:latest .

docker push 266735803751.dkr.ecr.us-east-1.amazonaws.com/nodeapp:latest

docker image remove 266735803751.dkr.ecr.us-east-1.amazonaws.com/nodeapp:latest

echo 'completed deployment.......'