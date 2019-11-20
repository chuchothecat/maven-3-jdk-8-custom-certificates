FROM maven:3-jdk-8

ENV JAVA_HOME=/usr/local/openjdk-8

COPY my-server.crt /etc/ssl/certs/

RUN $JAVA_HOME/bin/keytool -storepasswd -new abc123 -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit
RUN yes | $JAVA_HOME/bin/keytool -import -trustcacerts -file /etc/ssl/certs/my-server.crt -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass abc123
