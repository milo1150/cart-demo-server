# Project structure

![diagram-export-4-23-2025-7_31_35-AM](https://github.com/user-attachments/assets/ce8a001b-a3ae-440b-9a56-aefbac82ab47)

## How to

- Create .env with

```bash
# Gateway
GATEWAY_DOMAIN=http://localhost
GATEWAY_DOMAIN_PORT=:3000

# Allow-Origin
ALLOW_ORIGIN_DOMAIN=http://localhost
ALLOW_ORIGIN_DOMAIN_PORT=:3000

# NATS
NATS_TOKEN=#platong1234

# pgadmin
PGADMIN_DEFAULT_EMAIL=admin@pgadmin.com
PGADMIN_DEFAULT_PASSWORD=password
PGADMIN_SCRIPT_NAME=/pgadmin

# Route
NAT_MONITOR_REVERSE_PROXY_ENDPOINT=nats_server
NAT_MONITOR_REVERSE_PROXY_PORT=8222
USER_REVERSE_PROXY_ENDPOINT=demo-user-service-app-1
USER_REVERSE_PROXY_PORT=1323
CART_REVERSE_PROXY_ENDPOINT=demo-cart-service-app-1
CART_REVERSE_PROXY_PORT=1323
SHOP_PRODUCT_REVERSE_PROXY_ENDPOINT=demo-shop-product-service-app-1
SHOP_PRODUCT_REVERSE_PROXY_PORT=1323
PAYMENT_REVERSE_PROXY_ENDPOINT=demo-payment-service-app-1
PAYMENT_REVERSE_PROXY_PORT=1323
MINIO_SHOP_PRODUCT_REVERSE_PROXY_ENDPOINT=minio-shop-product
MINIO_SHOP_PRODUCT_WEB_UI_PORT=9001
MINIO_SHOP_PRODUCT_API_PORT=9000
```

- Run server and apps

```bash
./dev-start.sh
```

- Stop server and apps

```bash
./dev-stop.sh
```

- Run server only

```bash
./caddy-start.sh
```

- Stop server only

```bash
./caddy-start.sh
```
