FROM quay.io/drsylent/cubix/block2/homework-base:java21

LABEL cubix.homework.owner="Nyőgér János"
ENV CUBIX_HOMEWORK="Nyőgér János"
ENV APP_DEFAULT_MESSAGE=""

RUN mkdir /opt/app && chown 1001 -R /opt/app
USER 1001
WORKDIR /opt/app
COPY target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
