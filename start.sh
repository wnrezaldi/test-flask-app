#!/bin/bash
app="test-flask-app"
port=56733
docker build -t ${app} .
docker run --rm -d -p ${port}:80 \
  --name=${app} \
  -v $PWD:/app ${app}
echo "successfuly run ${app} at port ${port}"
