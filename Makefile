
rebuild:
	docker-compose build --no-cache
	touch .build

.build: Dockerfile
	docker-compose build
	touch .build

shell: .build
	docker-compose run --rm cdk-utils bash
