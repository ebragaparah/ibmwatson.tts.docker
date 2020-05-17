up:
	docker-compose up --build
start:
	docker-compose up
migrate:
	docker-compose exec backend sequelize-cli db:migrate
