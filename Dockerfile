# Use a stable OpenJDK 17 image
FROM openjdk:17-slim

# Set working directory inside the container
WORKDIR /app

# Copy the built Spring Boot JAR into the container
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
