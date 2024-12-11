#!/bin/bash

# shard 2
echo 'пользователей в шарде 2'
docker compose exec -T shard2-1 mongosh --port 27021 --quiet <<EOF
use somedb
db.helloDoc.countDocuments()
exit();
EOF