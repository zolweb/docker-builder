Docker: Assets builder
======================

Simple image for helping building assets.

 * nodejs
 * npm
 * bower
 * gulp

Usage
-----

```sh
# Run a bash container to execute any command
sudo docker run \
    -t -i \
    --rm \
    -v `pwd`:/src \ # Share sources
    zolweb/docker-builder \
    bash

# Or run a command directly
sudo docker run \
    -t -i \
    --rm \
    -v `pwd`:/src \ # Share sources
    zolweb/docker-builder \
    bash -c 'bower install && npm install --loglevel info'
```

Development
-----------

```sh
# Build manually the image
make build # sudo docker build -t zolweb/docker-builder .

# Run a bash container
make bash # sudo docker run --rm -t -i zolweb/docker-builder bash

# Remove the image
make clear # sudo docker rmi -f zolweb/docker-builder
```
