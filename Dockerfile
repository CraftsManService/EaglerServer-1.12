# Use an actively maintained, official lightweight Java runtime
FROM eclipse-temurin:17-jre-alpine

# Set the working directory inside the server container
WORKDIR /app

# Copy all of your repository files into the container
COPY . .

# Expose your proxy port 8081 internally
EXPOSE 8081

# Jump into bungee, run proxy in the background, then jump into server and run server.jar
CMD sh -c "cd bungee && java -jar bungee.jar & cd /app/server && java -jar server.jar"
