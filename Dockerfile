# Use the official Ubuntu image
FROM ubuntu:latest

# Update and install necessary packages
RUN apt-get update && apt-get install -y \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Create the symbolic link
RUN ln -s /etc/passwd /evil.txt

# Set the working directory
WORKDIR /

# Keep the container running
CMD ["tail", "-f", "/dev/null"]