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
COPY --from=builder /src/public /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
