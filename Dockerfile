# Dockerfile
FROM python:3.10-slim

LABEL student = "Vineet Poojary" \
      lab = "Lab 1"

WORKDIR /app

ARG ENVIRONMENT=development
ENV ENVIRONMENT=${ENVIRONMENT}

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["sh", "-c", "echo Running in $ENVIRONMENT mode && python main.py"]