rs.initiate(
    {
      _id : "rs2",
      members: [
        { _id : 0, host : "shard2-1:27021" },
        { _id : 1, host : "shard2-2:27022" }, 
        { _id : 2, host : "shard2-3:27023" }
      ]
    }
);