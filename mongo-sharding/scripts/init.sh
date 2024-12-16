#!/bin/bash

# init config server
docker cp scripts/init_config_server.js configSrv:/tmp && docker exec -it configSrv mongosh --port 27017 --f /tmp/init_config_server.js

# init shard1
docker cp scripts/init_shard1.js shard1:/tmp && docker exec -it shard1 mongosh --port 27018 --f /tmp/init_shard1.js

# init shard2
docker cp scripts/init_shard2.js shard2:/tmp && docker exec -it shard2 mongosh --port 27019 --f /tmp/init_shard2.js

# init router
sleep 1
docker cp scripts/init_router.js mongos_router:/tmp && docker exec -it mongos_router mongosh --port 27020 --f /tmp/init_router.js
