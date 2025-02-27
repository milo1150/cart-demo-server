#!/bin/sh

WORKSPACE_PATH="$(cd ../../ && pwd)"
echo "WORKSPACE_PATH = $WORKSPACE_PATH"

echo "stop caddy"
docker-compose down

echo "stop shop-product-service"
cd "$WORKSPACE_PATH/shop-product-service/scripts" && ./dev-stop.sh

echo "stop cart-service"
cd "$WORKSPACE_PATH/cart-service/scripts" && ./dev-stop.sh

echo "stop user-service"
cd "$WORKSPACE_PATH/user-service/scripts" && ./dev-stop.sh
