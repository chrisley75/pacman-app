FROM node:boron
#FROM alpine:latest

# Create app directory
RUN mkdir -p /app
WORKDIR /app

# Clone game source code
RUN git clone https://github.com/chrisley75/pacman-app.git .

# Install app dependencies
RUN npm install

# Expose port 8080
EXPOSE 8080

# Run container
CMD ["npm", "start"]
