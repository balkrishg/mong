FROM java:8
VOLUME /tmp
EXPOSE 8080
ADD Sumcalc8082.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
