# Use the Eclipse Temurin JDK image
FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /app

# Copy the jar file into the container
COPY target/dataservice-0.0.1-SNAPSHOT.jar dataservice-0.0.1-SNAPSHOT.jar

# Expose application port
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "dataservice-0.0.1-SNAPSHOT.jar"]