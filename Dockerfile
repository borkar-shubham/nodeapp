# Use an official Node.js runtime as a parent image
FROM node:20-alpine
# Create the user for node
RUN user add -m nodeuser

USER nodeuser
# Set the working directory in the container
WORKDIR /nodeapp
# Copy package.json and package-lock.json first
COPY package.json ./
# Install dependencies
# RUN npm install 
RUN npm install --only=production

#COPY index.js src ./
# Copy the rest of the application files
COPY . .
# Expose the application port
EXPOSE 3000
# Command to run the application
CMD ["node", "server.js"]



