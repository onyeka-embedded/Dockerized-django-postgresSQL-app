FROM python:3.12.3-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /home/app

# Install PostgreSQL client
RUN apt-get update && apt-get install -y postgresql-client

COPY requirements.txt .

RUN pip install -r requirements.txt

#Make the entrypoint script executable
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY . .

EXPOSE 8000

ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


