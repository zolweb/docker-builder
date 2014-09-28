build:
	sudo docker build -t zolweb/docker-builder .

bash:
	sudo docker run --rm=true -t -i zolweb/docker-builder /bin/bash

clear:
	sudo docker rmi -f zolweb/docker-builder
