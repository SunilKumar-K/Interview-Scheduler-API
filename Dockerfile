# Use the official OpenJDK image as a base
FROM openjdk:17-jdk-slim

# Set working directory in the container
WORKDIR /app

# Copy your application jar file into the container
COPY target/*.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

