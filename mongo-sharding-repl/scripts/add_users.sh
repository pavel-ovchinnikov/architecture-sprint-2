#!/bin/bash

# заполняем данными
COUNT_USERS=100
ADDR=http://localhost:8080/helloDoc/users

for A in $(seq $COUNT_USERS)
do 
    curl -X POST -H 'Content-Type:application/json' \
        -d '{"name":"yswe3r4-'$A'","age":"'$A'"}' $ADDR
done