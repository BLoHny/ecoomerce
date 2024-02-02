FROM maven:3.8.3-openjdk-17 AS GRADLE_BUILD

MAINTAINER rubycpp1225@outlook.kr

COPY build.gradle /build/

COPY src /build/src/

WORKDIR /build/

FROM openjdk:17-jdk

COPY build/libs/ecoomerce-1.0.jar Ecommerce.jar

ENTRYPOINT ["java", "-jar", "Ecommerce.jar"]