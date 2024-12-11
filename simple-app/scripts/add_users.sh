#!/bin/bash

# заполняем данными
ADDR=http://localhost:8080/helloDoc/users

for A in $(seq 32)
do 
    curl -X POST -H 'Content-Type:application/json' \
        -d '{"name":"yswe3r4-'$A'","age":"'$A'"}' $ADDR
done