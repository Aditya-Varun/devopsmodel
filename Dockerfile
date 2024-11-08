# Step 1: Use an official Node.js image as the base image
FROM node:14

# Step 2: Set the working directory in the container
WORKDIR /usr/src/app

# Step 3: Copy the package.json and package-lock.json (if exists) into the container
COPY package*.json ./

# Step 4: Install the application dependencies
RUN npm install

# Step 5: Copy the rest of the application files into the container
COPY . .

# Step 6: Expose the port the app is running on
EXPOSE 8080

# Step 7: Define the command to run your app
CMD ["node", "app.js"]


