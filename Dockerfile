# Use the official httpd (Apache HTTP Server) image from Docker Hub
FROM httpd:2.4

# Copy the contents of the project to the default httpd directory
COPY . /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80
