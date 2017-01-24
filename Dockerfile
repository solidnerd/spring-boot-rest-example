FROM openjdk:8u111-jre-alpine

COPY targets/ /app

ENTRYPOINT ["java", "-jar"]
CMD ["/app/gs-rest-service-0.1.0.jar"]