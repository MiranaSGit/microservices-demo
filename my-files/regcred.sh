#!/bin/bash
export AWS_ACCOUNT=178628758487
export AWS_REGION=us-east-1

kubectl create secret docker-registry regcred \
  --docker-server=${AWS_ACCOUNT}.dkr.ecr.${AWS_REGION}.amazonaws.com \
  --docker-username=AWS \
  --docker-password=$(aws ecr get-login-password --profile omer) \
  --namespace=default