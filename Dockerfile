FROM node:20-alpine

# Install git and yarn
RUN apk add --no-cache git yarn

# Set working directory
WORKDIR /app

# Copy only the entry point (the rest will be cloned at runtime)
COPY index.js ./

# Start the bot
CMD ["node", "index.js"]
