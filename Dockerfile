# Use an official Python runtime as a parent image
FROM --platform=linux/amd64 python:3.9

EXPOSE 9000

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    python3-cffi \
    libcairo2 \
    libpango-1.0-0 \
    libpangocairo-1.0-0 \
    libgdk-pixbuf2.0-0 \
    libffi-dev \
    shared-mime-info \
    fonts-noto

COPY requirements.txt /app/requirements.txt

# Set the working directory to /app
WORKDIR /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app

# Define environment variable
ENV PYTHONPATH /app

RUN pwd

CMD ["python3", "/app/students_tornado.py"]