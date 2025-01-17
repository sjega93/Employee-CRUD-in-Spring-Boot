# Build the application first using Maven
FROM  maven:latest as build
WORKDIR /app
COPY . .
RUN mvn install

# Inject the JAR file into a new container to keep the file small
FROM openjdk:latest
WORKDIR /app
COPY --from=build /app/target/SUSAHCRUDNIE-0.0.1-SNAPSHOT.jar /app/app.jar
EXPOSE 8081
ENTRYPOINT ["sh", "-c"]
CMD ["java -jar app.jar"]
