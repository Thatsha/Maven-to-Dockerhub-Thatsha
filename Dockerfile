# # Use a base image with Java installed
# FROM openjdk8

# # Set the working directory in the container
# WORKDIR /app

# # Copy the compiled Java classes and the pom.xml file
# COPY target/*.jar /app/
# COPY pom.xml /app/

# # Run Maven to download dependencies and package the application
# RUN mvn clean install

# # Set the command to run your application
# CMD ["java", "-jar", "datatype-application.jar"]

