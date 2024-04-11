FROM node:20
 
WORKDIR /var/www/html

# Copy `package.json` and `package-lock.json`
COPY src/package*.json .

# Install project dependencies
RUN npm install

# Copy project files into the docker image
COPY src .

# Expose the port Vite runs on
EXPOSE 3000

# Start the Vite server
CMD ["npm", "run", "dev"]
