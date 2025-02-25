#!/bin/sh

# sotp traefik
docker-compose down &&
	# stop shop-product service
	cd ../shop-product-service/scripts &&
	./dev-stop.sh
