IMAGE_NAME ?= tmnkgwa4/pukiwiki
IMAGE_TAG ?= v0.1

.PHONY: build

all: build push

build:
	docker build -t ${IMAGE_NAME} . \
		&& docker tag ${IMAGE_NAME} ${IMAGE_NAME}:${IMAGE_TAG} \
		&& docker tag ${IMAGE_NAME} ${IMAGE_NAME}:latest

push:
	docker push ${IMAGE_NAME}:${IMAGE_TAG} \
		&& docker push ${IMAGE_NAME}:latest
