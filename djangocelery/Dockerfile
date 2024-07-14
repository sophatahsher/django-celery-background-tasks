FROM python:3.11.4-alpine

# Set the working directory
WORKDIR /usr/src/app

# Prevent Python from writing .pyc files
ENV PYTHONDONTWRITEBYTECODE 1

# Ensure Python output is sent directly to the terminal
ENV PYTHONUNBUFFERED 1

# Install system dependencies
RUN apk update && apk add --no-cache bash

# Update pip
RUN pip install --upgrade pip

# Copy the requirements file and install dependencies
COPY ./requirenments.txt /usr/src/app/requirenments.txt
RUN pip install -r requirenments.txt

# Copy the entrypoint script and ensure it's executable
COPY ./entrypoint.sh /usr/src/app/entrypoint.sh

RUN chmod +x /usr/src/app/entrypoint.sh

# Copy the rest of application files
COPY . /usr/src/app/

# Specify the entrypoint script
ENTRYPOINT [ "/usr/src/app/entrypoint.sh" ]




