build:
	docker-compose -f ./src/docker-compose.yml build $(c)
up:
	docker-compose -f ./src/docker-compose.yml up --build -d $(c)
down:
	docker-compose -f ./src/docker-compose.yml down --volumes