rs.initiate(
    {
      _id : "rs1",
      members: [
        { _id : 0, host : "shard1-1:27018" },
        { _id : 1, host : "shard1-2:27019" }, 
        { _id : 2, host : "shard1-3:27020" }
      ]
    }
);