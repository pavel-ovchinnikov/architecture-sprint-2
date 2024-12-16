#!/bin/bash

# shard 1
echo 'пользователей в шарде 1'
docker compose exec -T shard1 mongosh --port 27018 --quiet <<EOF
use somedb
db.helloDoc.countDocuments()
exit();
EOF
