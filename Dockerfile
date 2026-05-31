# Step 1: Use the official lightweight Nginx image
FROM nginx:alpine

# Step 2: Set the working directory to Nginx's default HTML folder
WORKDIR /usr/share/nginx/html

# Step 3: Remove default Nginx static assets (optional but clean)
RUN rm -rf ./*

# Step 4: Copy all static files and folders from your repository to the container
COPY index.html ./
COPY images/ ./images/
COPY mdimages/ ./mdimages/

# Step 5: Expose port 80 so the container can receive traffic
EXPOSE 80

# Step 6: Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
