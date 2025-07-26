#!/usr/bin/env bash
set -e

echo "[install.sh] Creating Python virtual environment..."
python3 -m venv .venv
source .venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt

echo "[install.sh] Building Docker image..."
docker build -t ecommerce-fastapi .

echo "[install.sh] Docker image built. Starting container..."
docker run -d --name ecommerce-fastapi -p 8000:8000 ecommerce-fastapi

exit 0
