# DOCKERIZED DJANGO APPLICATION WITH POSTGRES DATABASE

This project sets up a Django web application with a PostgreSQL database using Docker and Docker Compose.

## Project Structure

- `Dockerfile`: Defines the image for the Django application.
- `docker-compose.yml`: Configures the Django and PostgreSQL services, including volume management for data persistence.
- `entrypoint.sh`: Ensures the database is ready before Django starts and runs migrations.

## Prerequisites

- Docker
- Docker Compose

## Setup Instructions

1. **Clone the Repository:**
   ```bash
   git clone my-repo
   cd my-repo

2. **Build and Run Containers:**
   ```bash
   docker compose up

3. **Access the Application:**

    The Django application will be available at http://0.0.0.0:8000/api/