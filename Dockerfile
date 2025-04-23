
# Base image
# Use official node v14 docker image
FROM node:14-alpine

# Create new folder & set current directory into the new folder
WORKDIR /app

# Transfer all files from current directory into container
COPY . .

# Determine required environment variables for the application
ENV NODE_ENV=production   
ENV DB_HOST=item-db

# Install required packages during image building
# Executed during Image build
RUN npm install --production --unsafe-perm && npm run build

# The image base command
# Executed each time the container is started
CMD ["npm", "start"]

# Define which port to be exposed
EXPOSE 8080