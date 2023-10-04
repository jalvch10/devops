# Use an official Ubuntu as a parent image
FROM ubuntu:latest

# Update the package list and install necessary packages
RUN apt-get update && \
    apt-get install -y wget unzip && \
    rm -rf /var/lib/apt/lists/*

# Download and install Groovy
RUN wget https://dl.bintray.com/groovy/maven/apache-groovy-binary-3.0.9.zip && \
    unzip apache-groovy-binary-3.0.9.zip -d /opt && \
    rm apache-groovy-binary-3.0.9.zip

# Set environment variables
ENV GROOVY_HOME /opt/groovy-3.0.9
ENV PATH $GROOVY_HOME/bin:$PATH

# Verify Groovy installation
RUN groovy --version

# Set a working directory
WORKDIR /app

# Your additional Dockerfile commands can go here

# CMD ["groovy"]