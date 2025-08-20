# Use nginx alpine image for a lightweight web server
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy all project files to nginx html directory
COPY . /usr/share/nginx/html/

# Expose port 80 (nginx default)
EXPOSE 80

# nginx runs in foreground by default in this image
CMD ["nginx", "-g", "daemon off;"] 