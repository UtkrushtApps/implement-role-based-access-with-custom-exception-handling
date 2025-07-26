# Task Overview
You are maintaining an e-commerce FastAPI service tasked with handling customer orders and notifying operations staff. The goal is to refactor the order creation endpoint to offload staff notifications to a background task, organize endpoints using routers, and implement a middleware that logs requests and responses. The project should be easily containerized for deployment.

# Guidance
- Use FastAPI's BackgroundTask system to decouple time-consuming notification logic from the core API response.
- Implement a custom middleware to log details of each request and response, including HTTP method, path, and status code.
- Organize the API endpoints using routers for modular code structure.
- Ensure the whole application can be deployed via Docker efficiently.

# Objectives
- Refactor the order endpoint to use background tasks for staff notifications.
- Implement a middleware that logs every request/response with method, path, and status code.
- Organize endpoints with routers, not directly on the main app.
- Make the project containerizable with a Dockerfile.

# How to Verify
- Confirm that placing an order returns an immediate response regardless of notification execution time.
- Ensure staff notification is executed in the background after order placement.
- Verify every request and response are logged to stdout with method, path, and status code.
- Check that the project builds and runs successfully as a Docker container.
- Validate endpoint organization via routers and overall code modularity.
