#!/bin/sh

docker-compose up -d &&
	cd ../shop-product-service/scripts &&
	./dev-start-detach.sh
