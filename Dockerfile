FROM openjdk:11
ENV JAVA_HOME /usr/lib/jvm/openjdk:11
ENV PATH ${PATH}:${JAVA_HOME}/bin
COPY target/windrose-1.0-SNAPSHOT.jar app.jar
CMD ["java", "-jar", "app.jar"]