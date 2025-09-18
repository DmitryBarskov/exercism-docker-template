FROM mcr.microsoft.com/devcontainers/java:1-21

RUN sudo apt update && sudo apt install unzip --no-install-recommends -y

RUN curl "https://services.gradle.org/distributions/gradle-8.7-bin.zip" -sLo /tmp/gradle.zip && \
    ls -la /tmp && \
    unzip -d /opt/gradle /tmp/gradle.zip && \
    rm /tmp/gradle.zip && \
    mkdir -p /opt/gradle && \
    ln -s /opt/gradle/gradle-8.7/bin/gradle /bin/gradle
