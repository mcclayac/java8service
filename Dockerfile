FROM store/oracle/serverjre:8

RUN mkdir java8service
RUN cd java8service
COPY target/ /java8service

WORKDIR java8service

EXPOSE 8181

CMD ["java", "-cp", "./java8service-0.1.1.jar", "com.bigman.maven.JavaWebServer"]