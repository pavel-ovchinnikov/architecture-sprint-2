NAME := "mongo-sharding"

start: run-containers init-db add-users

stop:
	@echo "Stop $(NAME)"
	docker compose down -v
	@echo "Stoped $(NAME)"

run-containers:
	@echo "Run containers"
	@sleep 2
	docker compose up -d

init-db:
	@echo "Init database"
	@sleep 2
	@sh scripts/init.sh
	
add-users:
	@echo "Add users"
	@sleep 2
	@sh scripts/add_users.sh

test:
	@echo "Testing"
	@sh scripts/count_users_shard1.sh
	@sh scripts/count_users_shard2.sh