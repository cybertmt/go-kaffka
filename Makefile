DOCKER_IMG1="kafkapublisher:develop"

DOCKER_IMG2="kafkaconsumer:develop"

build-img1:
	docker build \
		-t $(DOCKER_IMG1) \
		-f publisher/Dockerfile .


build-img2:
	docker build \
		-t $(DOCKER_IMG2) \
		-f consumer/Dockerfile .
	

 
.PHONY: build-img1 build-img2