all: build_image run_image

help:
	@echo 1) build_image - Build Dockerfile
	@echo 2) run_image - Run Dockerfile

build_image:
	docker-compose up -d --build

run_image:
	docker-compose up