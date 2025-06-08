#!/bin/sh

WORKSPACE_PATH="$(cd ../ && pwd)"
echo "WORKSPACE_PATH = $WORKSPACE_PATH"

echo "start caddy"
docker-compose up -d

echo "start user-service"
cd "$WORKSPACE_PATH/cart-demo-user/scripts" && ./dev-start-detach.sh

echo "start shop-product-service"
cd "$WORKSPACE_PATH/cart-demo-shop-product/scripts" && ./dev-start-detach.sh

echo "start payment-service"
cd "$WORKSPACE_PATH/cart-demo-payment/scripts" && ./dev-start-detach.sh

echo "start cart-service"
cd "$WORKSPACE_PATH/cart-demo-cart/scripts" && ./dev-start-detach.sh
