# Use a specific Python base image
FROM python:3.9-slim

# Install necessary packages
RUN apt-get update \
    && apt-get install -y sshpass \
    && apt-get install less \
    && rm -rf /var/lib/apt/lists/*

# Install Ansible
RUN pip install ansible \
    && pip install ansible-lint

# Set the working directory
WORKDIR /ansible_shared

# Set the virtual environment as the entry point
CMD ["/bin/bash"]
