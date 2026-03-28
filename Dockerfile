# Dockerfile
FROM node:18-alpine

# Install git and yarn
RUN apk add --no-cache git yarn

# Set the working directory inside the container
WORKDIR /app

# Copy only the entry point first (for caching)
COPY index.js ./

# The script will clone the repository into /app/levanter
# and install dependencies at startup

# Start the bot
CMD ["node", "index.js"]
