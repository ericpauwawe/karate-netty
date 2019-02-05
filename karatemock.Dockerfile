FROM openjdk:8-jre-alpine
#FROM aeonproject/openjdk-jre

ARG VERSION=0.9.1
ARG REPOSITORY_URL=https://dl.bintray.com/ptrthomas/karate/karate-$VERSION.jar
RUN echo "using karate netty mock server version $REPOSITORY_URL"
RUN mkdir -p /opt/karatemock &&\
    wget -O /opt/karatemock/karate.jar $RESPOSITORY_URL

