# Use the Nginx image as the base
FROM nginx

# Replace the default Nginx index.html with our own
RUN echo "H111ello World from Docker!" > /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# By default, Nginx starts in the foreground
CMD ["nginx", "-g", "daemon off;"]

