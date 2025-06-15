# Use official Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY backend/package*.json ./
RUN npm install

# Copy the entire backend folder content
COPY backend/ .

# Ensure uploads directory exists
RUN mkdir -p uploads

# Expose the app port
EXPOSE 3000

# Start the server
CMD ["node", "index.js"]
