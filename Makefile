up:
	docker-compose up --build
start:
	docker-compose up
migrate:
	docker-compose exec backend sequelize-cli db:migrate
seed:
	docker-compose exec backend sequelize-cli db:seed:all
db_drop:
	docker-compose exec backend sequelize-cli db:drop
db_create:
	docker-compose exec backend sequelize-cli db:create
