#!/usr/bin/env bash
set -e

bash install.sh

if docker ps | grep ecommerce-fastapi >/dev/null; then
    echo "[run.sh] Ecommerce FastAPI container is running at http://localhost:8000"
else
    echo "[run.sh] Failed to start the FastAPI container. Check Docker logs."
fi

exit 0
