#!/bin/bash

# shard 1

docker compose exec -T shard1-1 mongosh --port 27018 --quiet <<EOF
use somedb
db.helloDoc.countDocuments()
exit();
EOF
