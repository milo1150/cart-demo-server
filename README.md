# Project structure

![diagram-export-4-23-2025-7_31_35-AM](https://github.com/user-attachments/assets/ce8a001b-a3ae-440b-9a56-aefbac82ab47)

## How to

- Create .env with

```bash
GATEWAY_DOMAIN=http://localhost
GATEWAY_DOMAIN_PORT=:3000
NATS_TOKEN=#platong1234
PGADMIN_DEFAULT_EMAIL=admin@pgadmin.com
PGADMIN_DEFAULT_PASSWORD=password
PGADMIN_SCRIPT_NAME=/pgadmin
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
