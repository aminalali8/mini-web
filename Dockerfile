# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the contents of the project to the default Nginx directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
