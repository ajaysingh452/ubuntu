all: build

build:
	@docker build --tag=ajaysingh452/ubuntu:latest .

release: build
	@docker build --tag=ajaysingh452/ubuntu:$(shell cat VERSION) .
