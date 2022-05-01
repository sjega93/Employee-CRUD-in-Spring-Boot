# Inject the JAR file into a new container to keep the file small
FROM openjdk:latest
WORKDIR /app
COPY /Users/s.jegatheeswaran/Documents/MiSe/Presentation 5_5_22/Employee-CRUD-in-Spring-Boot/target/*.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["sh", "-c"]
CMD ["java -jar app.jar"]
