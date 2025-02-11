# Use Python 3.9 as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy only necessary files to reduce image size (avoid copying unnecessary files)
COPY requirements.txt /app/

# Install dependencies from the requirements.txt file
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Copy the rest of the application code
COPY . /app

# Run the application
CMD ["python", "app.py"]
