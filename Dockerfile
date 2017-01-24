FROM openjdk:8u111-jre-alpine

COPY target/*.jar /app

ENTRYPOINT ["java", "-jar"]

CMD ["/app/gs-rest-service-0.1.0.jar"]

ARG BUILD_DATE
ARG VCS_REF
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.license="MIT" \
      org.label-schema.name="Docker Teamspeak" \
      org.label-schema.url="https://github.com/solidnerd/docker-teamspeak/" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/solidnerd/docker-teamspeak.git" \
      org.label-schema.vcs-type="Git"