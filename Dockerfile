# Use an actively maintained, official lightweight Java runtime
FROM eclipse-temurin:17-jre-alpine

# Set the working directory inside the server container
WORKDIR /app

# Copy all of your repository files into the container
COPY . .

# Expose your proxy port 8081 internally
EXPOSE 8081

# Optimized RAM allocation for Render's 512MB limit:
# Bungee proxy max RAM: 128MB (-Xmx128M)
# Minecraft server max RAM: 256MB (-Xmx256M)
CMD sh -c "cd bungee && java -Xmx128M -jar bungee.jar & cd /app/server && java -Xmx256M -jar server.jar"
