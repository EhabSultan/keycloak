#!/bin/bash 


source /opt/keycloak_conf/secrets

if [ ! -f /opt/keycloak-3.4.3.Final/standalone/configuration/keycloak-add-user.json ]; then
 echo keycloak-add-user.json file found, trying to add new user
 if [ -z "${KC_ADMIN_USER}" ]  && [ -z "${KC_PW}"  ]  ; then 
 echo secrets file seems valid adding user ${KC_ADMIN_USER}
 /opt/keycloak-3.4.3.Final/bin/keycloak-add-user -u ${KC_ADMIN_USER} -p ${KC_PW}
fi

/opt/keycloak-3.4.3.Final/bin/standalone.sh
