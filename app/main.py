from fastapi import FastAPI
from app.middleware.logging_middleware import LoggingMiddleware
from app.routers import orders

app = FastAPI()

app.add_middleware(LoggingMiddleware)

app.include_router(orders.router, prefix="/orders", tags=["orders"])
