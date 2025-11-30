FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Install system dependencies for Brlapi (brltty)
RUN apt-get update && \
    apt-get install -y brltty && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*  # Clean up the apt cache to reduce image size

# Copy the requirements file first (this helps leverage Docker cache)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port for the app (assuming the app runs on port 5000)
EXPOSE 5000

# Run the app
CMD ["python3", "app.py"]
