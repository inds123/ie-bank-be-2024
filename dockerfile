# Use Python base image
FROM python:3.10-slim-buster

# Set working directory
WORKDIR /app

# Copy dependencies and install
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# Copy all app files to container
COPY . .

# Expose port for Flask app
EXPOSE 5000

# Start Flask app
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]