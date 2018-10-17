FROM openjdk:8u181-jdk
LABEL Description="Keycloak for the candig project"
# loading
#  wget, https://downloads.jboss.org/keycloak/3.4.3.Final/keycloak-3.4.3.Final.tar.gz 
# This run in standalone mode. Might not be ideal in the long run...
EXPOSE 9990 9993 8009 8080 8443 4712 4713
COPY keycloak-3.4.3.Final /opt/keycloak-3.4.3.Final
COPY startup.sh /usr/local/bin/startup.sh
ENTRYPOINT /usr/local/bin/startup.sh
