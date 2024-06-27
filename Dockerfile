# Use the official Nginx image from the Docker Hub
FROM  nginx:alpine

# Copy the contents of the project to the default Nginx directory
COPY . /usr/share/nginx/html

# Add a user with uid 1000 and gid 1000 to run the code-server and Nginx
RUN addgroup -g 1000 code-server-user && \
    adduser -D -u 1000 -G code-server-user code-server-user && \
    adduser code-server-user nginx

# Setup the workdir
WORKDIR /usr/share/nginx/html

# Copy the entrypoint script and make it executable
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose port 80
EXPOSE 80

# Set the entrypoint
ENTRYPOINT [ "/entrypoint.sh" ]

