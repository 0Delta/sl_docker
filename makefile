IMAGE_NAME=0delta/sl

run:
	docker run --rm -it ${IMAGE_NAME}

build:
	docker build -t ${IMAGE_NAME} .
