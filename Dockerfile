# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose the Sanity.io development server port (by default, it's 3333)
EXPOSE 3333

# Start the Sanity.io development server
CMD ["npm", "run", "dev"]
