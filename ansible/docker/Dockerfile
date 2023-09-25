# Use a specific Python base image
FROM python:3.9-slim

# Install necessary packages
RUN apt-get update && apt-get install -y \
    sshpass \
    && rm -rf /var/lib/apt/lists/*

# Install Ansible
RUN pip install ansible

# Create the /etc/ansible directory if it doesn't exist
RUN mkdir -p /etc/ansible

# Copy the ansible.cfg file into the image
COPY ansible.cfg /etc/ansible/ansible.cfg

# Set the working directory
WORKDIR /ansible_shared

# Set the virtual environment as the entry point
CMD ["/bin/bash"]