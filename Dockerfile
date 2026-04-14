FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

EXPOSE 8000

# Run the API Gateway service
CMD ["uvicorn", "backend.services.gateway_service.main:app", "--host", "0.0.0.0", "--port", "8000"]
