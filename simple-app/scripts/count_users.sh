docker compose exec -T mongodb1 mongosh --port 27017 --quiet <<EOF
use somedb
db.helloDoc.countDocuments()
exit();
EOF 