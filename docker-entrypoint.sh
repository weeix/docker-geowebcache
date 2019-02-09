#!/bin/bash
set -e

# Create default admin
echo "$GWC_USER=$GWC_PASS,ROLE_ADMINISTRATOR" > /usr/local/tomcat/webapps/gwc/WEB-INF/users.properties

exec "$@"