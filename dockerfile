# syntax=docker/dockerfile:1
FROM ubuntu:22.04

# Install app dependencies
RUN apt-get update && apt-get install -y python3 python3-pip

# Install FastAPI and Uvicorn
RUN pip install fastapi uvicorn

# Copy the FastAPI app code
COPY main.py /main.py

# Expose the port
EXPOSE 8000

# Command to run the FastAPI app with Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
