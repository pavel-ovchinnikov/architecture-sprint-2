#!/bin/bash

# shard 2
echo 'пользователей в шарде 2'
docker compose exec -T shard2 mongosh --port 27019 --quiet <<EOF
use somedb
db.helloDoc.countDocuments()
exit();
EOF