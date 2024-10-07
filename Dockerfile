# Use NGINX Alpine as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy all files from the current directory to the NGINX web root
COPY . .

# Expose port 80 to the host
EXPOSE 80

# Start NGINX in the foreground (daemon off)
CMD ["nginx", "-g", "daemon off;"]
