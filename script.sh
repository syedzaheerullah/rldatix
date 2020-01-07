#!/bin/bash
docker build  -t "mywebserver" .
docker run -d -p 80:80 mywebserver 
output=`curl -v localhost:80/myself.json`
echo $output
