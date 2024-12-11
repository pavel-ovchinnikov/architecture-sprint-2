#!/bin/bash

get_shard_users_count() {
docker compose exec -T $1 mongosh --port $2 --quiet <<EOF
use somedb
"$1 count: " + db.helloDoc.countDocuments()
EOF
}

echo "rs1:"
get_shard_users_count shard1-1 27018 | grep -oE -e 'shard.*$' -e 'doc.*$'
get_shard_users_count shard1-2 27019 | grep -oE -e 'shard.*$' -e 'doc.*$'
get_shard_users_count shard1-3 27020 | grep -oE -e 'shard.*$' -e 'doc.*$'

echo "rs2:"
get_shard_users_count shard2-1 27021 | grep -oE -e 'shard.*$' -e 'doc.*$'
get_shard_users_count shard2-2 27022 | grep -oE -e 'shard.*$' -e 'doc.*$'
get_shard_users_count shard2-3 27023 | grep -oE -e 'shard.*$' -e 'doc.*$'