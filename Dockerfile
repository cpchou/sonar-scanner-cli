#FROM openjdk:8-jre-alpine
#FROM openjdk:11-jre-slim
FROM alpine:3.15
ENV LC_ALL=en_US.UTF-8 \
    TZ=Asia/Taipei	\
	JAVA_OPTS="-Dsun.jnu.encoding=UTF-8 -Dfile.encoding=UTF-8"
# https://binaries.sonarsource.com/?prefix=Distribution/sonar-scanner-cli/
# The newest sonar-scanner-cli-4.7.0.2747.zip
RUN apk --no-cache add openjdk11
RUN apk --no-cache add wget && \
    wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.7.0.2747.zip
RUN mkdir -p /opt
RUN apk  --no-cache add unzip 
RUN unzip -d /opt sonar-scanner-cli-4.7.0.2747.zip
RUN echo "export SONAR_SCANNER_HOME=/opt/sonar-scanner-4.7.0.2747-linux" >> /etc/profile
RUN echo "export PATH=/opt/sonar-scanner-4.7.0.2747-linux/bin:$PATH" >> /etc/profile
RUN ln -s /opt/sonar-scanner-4.7.0.2747/bin/sonar-scanner /usr/bin/sonar-scanner
RUN rm -f /*.zip


#docker run --rm -it -v "c:\Docker\sonarqube2\vol:/home/console" cpchou/sonar-scanner-cli bash