# Use official NGINX image
FROM nginx:latest

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default NGINX static files
RUN rm -rf ./*

# Copy application files
COPY index.html .

# Expose web port
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
