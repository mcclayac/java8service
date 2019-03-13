FROM store/oracle/serverjre:8

RUN mkdir java8service
RUN cd java8service
COPY out/production/java8service /java8service

WORKDIR java8service

EXPOSE 8181

CMD ["java", "JavaWebServer"]