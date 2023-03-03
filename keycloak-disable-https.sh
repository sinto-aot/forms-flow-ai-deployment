#!/bin/bash
docker exec keycloak bash /opt/jboss/keycloak/bin/kcadm.sh config credentials --server http://localhost:8080/auth --realm master --user admin << EOF
changeme
EOF
docker exec keycloak bash /opt/jboss/keycloak/bin/kcadm.sh update realms/master -s sslRequired=NONE