
FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install FastAPI and required dependencies
RUN pip install fastapi uvicorn

# Expose port 8000
EXPOSE 8000

# Command to run FastAPI app
CMD ["uvicorn", "api.index:app", "--host", "0.0.0.0", "--port", "8000"]
