# Use a lightweight OpenJDK 17 base image
FROM openjdk:17-jdk-slim

# Copy the Spring Boot JAR file from the target directory into the image
COPY target/*.jar app.jar

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "/app.jar"]
