#!/bin/sh

docker-compose down &&
	cd ../shop-product-service/scripts &&
	./dev-down.sh
