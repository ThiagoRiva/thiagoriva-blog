# Stage 1: Build the site
FROM hugomods/hugo:exts AS builder

# Set the source directory
WORKDIR /src

# Copy the project files
COPY . .

# Install dependencies (if any) and build the site
# --minify: Minify the output
# --gc: Run garbage collector
RUN hugo --minify --gc

# Stage 2: Serve the site with Nginx
FROM nginx:alpine

# Copy the built site from the builder stage to the Nginx html directory
COPY --from=builder /src/public /usr/share/nginx/html/blog

# Create a custom nginx config to serve from /blog
RUN echo 'server { \
    listen 80; \
    server_name _; \
    \
    location / { \
    return 301 /blog; \
    } \
    \
    location /blog/ { \
    alias /usr/share/nginx/html/blog/; \
    try_files $uri $uri/ /blog/index.html; \
    } \
    }' > /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
