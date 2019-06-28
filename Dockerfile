FROM tomcat:8

ARG GWC_VERSION=1.15.2

ENV GWC_USER=geowebcache GWC_PASS=secured

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN cd /usr/local/tomcat/webapps/ \
    && curl -SL https://sourceforge.net/projects/geowebcache/files/geowebcache/${GWC_VERSION}/geowebcache-${GWC_VERSION}-war.zip/download --output geowebcache.war.zip \
    && unzip geowebcache.war.zip \
    && unzip geowebcache.war -d gwc \
    && rm -f geowebcache.war.zip \
    && rm -f geowebcache.war \
    && chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["catalina.sh", "run"]