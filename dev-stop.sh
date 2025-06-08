#!/bin/sh

WORKSPACE_PATH="$(cd ../ && pwd)"
echo "WORKSPACE_PATH = $WORKSPACE_PATH"

echo "stop caddy"
docker-compose down

echo "stop user-service"
cd "$WORKSPACE_PATH/cart-demo-user/scripts" && ./dev-stop.sh

echo "stop shop-product-service"
cd "$WORKSPACE_PATH/cart-demo-shop-product/scripts" && ./dev-stop.sh

echo "start payment-service"
cd "$WORKSPACE_PATH/cart-demo-payment/scripts" && ./dev-stop.sh

echo "stop cart-service"
cd "$WORKSPACE_PATH/cart-demo-cart/scripts" && ./dev-stop.sh
