# Dockerfile
FROM python:3.10-slim

LABEL student = "Vineet Poojary" \
      lab = "Lab 1"

WORKDIR /app

ARG ENVIRONMENT=development

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

RUN echo "Building in $ENVIRONMENT mode"

CMD ["python", "main.py"]