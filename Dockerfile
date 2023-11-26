# Use the official OpenJDK base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/demo-0.0.1-SNAPSHOT.jar /app/

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]
