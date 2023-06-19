# docker-ubuntu-ssh-with-password

This README provides a summary of the Docker image created from the given Dockerfile.

## Summary

The Docker image is based on Ubuntu 20.04 and includes the OpenSSH server. It allows SSH access with password authentication for the user "colin". The image exposes port 22 for SSH connections.

## Build Instructions

1. Create a directory and a file named `Dockerfile` inside it.
2. Copy the provided Dockerfile contents into the `Dockerfile`.
3. Build the Docker image using the command: `docker build -t my-ssh-image .`

## Running the Container

Use the command `docker run -d -p 2222:22 my-ssh-image` to run the container based on the image. SSH access is available on port 2222.

## SSH Access

SSH into the running container using `ssh colin@localhost -p 2222`. The default password for the user "colin" is "changeme".

## Configuration

The Dockerfile sets up the SSH server and enables password authentication. Port 22 is exposed for SSH connections.

## Security Considerations

Using password authentication for SSH access has security implications. Consider using key-based authentication for increased security. Ensure to follow security best practices and harden the SSH server configuration for production environments.

<!-- ## License

This Docker image is provided under the [MIT License](https://opensource.org/licenses/MIT).
 -->
