all: build push

build:
	docker build -t ${DOCKER_USER}/pgbouncer:1.6.1 .

push: build
	docker push ${DOCKER_USER}/pgbouncer:1.6.1

test: build
	docker run -i ${DOCKER_USER}/pgbouncer:1.6.1 --version
