NAME ?= tmnkgwa4/actions-runner

RUNNER_VERSION ?= 2.169.1
DOCKER_VERSION ?= 19.03.8
TRIVY_VERSION ?= 0.1.6

.PONY: build check-env
.ONESHELL:
	SHELL=/bin/bash

build:
	docker build --build-arg RUNNER_VERSION=${RUNNER_VERSION} --build-arg DOCKER_VERSION=${DOCKER_VERSION} --build-arg TRIVY_VERSION=${TRIVY_VERSION} -t ${NAME}:latest -t ${NAME}:v${RUNNER_VERSION} .

push:
	docker push ${NAME}:latest
	docker push ${NAME}:v${RUNNER_VERSION}
