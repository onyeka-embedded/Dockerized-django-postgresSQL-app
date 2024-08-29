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
   
2. **Environment Variables**

**These variables can be modified in the docker-compose.yml file:**

- POSTGRES_DB: The name of the PostgreSQL database.

- POSTGRES_USER: The PostgreSQL username.

- POSTGRES_PASSWORD: The PostgreSQL password.

- DB_NAME: The database name used by Django.

- DB_USER: The database user used by Django.

- DB_PASSWORD: The database password used by Django.

- DB_HOST: The database host (set to db as per Docker Compose).

3. **Build and Run Containers:**
   ```bash
   docker compose up

4. **Access the Application:**

    The Django application will be available at http://0.0.0.0:8000
    
