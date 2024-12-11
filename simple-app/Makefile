NAME := "mongo-sharding"

start: run-containers mongo-init

stop:
	@echo "Stop $(NAME)"
	docker compose down -v
	@echo "Stoped $(NAME)"

run-containers:
	@echo "Run containers"
	docker compose up -d

mongo-init:
	@echo "Init mongo"
	@sleep 3
	@sh scripts/mongo-init.sh

test:
	@echo "Testing"
	@sh scripts/count_users.sh