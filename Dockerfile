# Use the official Nginx image from the Docker Hub
FROM  nginx:alpine

# Copy the contents of the project to the default Nginx directory
COPY . /usr/share/nginx/html

# Add a user with uid 1000 and gid 1000
RUN addgroup -g 1000 code-server-user && \
    adduser -D -u 1000 -G code-server-user code-server-user

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
