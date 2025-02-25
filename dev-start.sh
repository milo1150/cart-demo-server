#!/bin/sh

WORKSPACE_PATH="$(cd ../ && pwd)"
echo "WORKSPACE_PATH = $WORKSPACE_PATH"

echo "start traefik"
docker-compose up -d

echo "start shop-product-service"
cd "$WORKSPACE_PATH/shop-product-service/scripts" && ./dev-start-detach.sh

echo "start cart-service"
cd "$WORKSPACE_PATH/cart-service/scripts" && ./dev-start-detach.sh
