sh.addShard( "rs1/shard1-1:27018");
sh.addShard( "rs1/shard1-2:27019");
sh.addShard( "rs1/shard1-3:27020");
sh.addShard( "rs2/shard2-1:27021");
sh.addShard( "rs2/shard2-2:27022");
sh.addShard( "rs2/shard2-3:27023");
sh.enableSharding("somedb");
sh.shardCollection("somedb.helloDoc", { "name" : "hashed" } );