#!/bin/sh

# start traefik
docker-compose up -d &&
	# start shop-product service
	cd ../shop-product-service/scripts &&
	./dev-start-detach.sh
