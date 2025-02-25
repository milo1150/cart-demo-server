#!/bin/sh

WORKSPACE_PATH="$(cd ../ && pwd)"
echo "WORKSPACE_PATH = $WORKSPACE_PATH"

echo "stop traefik"
docker-compose down

echo "stop shop-product-service"
cd "$WORKSPACE_PATH/shop-product-service/scripts" && ./dev-stop.sh

echo "stop cart-service"
cd "$WORKSPACE_PATH/cart-service/scripts" && ./dev-stop.sh
