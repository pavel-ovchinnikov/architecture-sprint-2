#!/bin/bash

# init config server
docker cp scripts/init_config_server.js configSrv:/tmp && docker exec -it configSrv mongosh --port 27017 --f /tmp/init_config_server.js

# init rs1
docker cp scripts/init_rs1.js shard1-1:/tmp && docker exec -it shard1-1 mongosh --port 27018 --f /tmp/init_rs1.js

# init rs2
docker cp scripts/init_rs2.js shard2-1:/tmp && docker exec -it shard2-1 mongosh --port 27021 --f /tmp/init_rs2.js

# init router
sleep 3
docker cp scripts/init_router.js mongos_router:/tmp && docker exec -it mongos_router mongosh --port 27024 --f /tmp/init_router.js
