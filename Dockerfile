FROM php:7.0-apache

ENV DOKUWIKI_VERSION=2018-04-22a

ADD https://download.dokuwiki.org/src/dokuwiki/dokuwiki-${DOKUWIKI_VERSION}.tgz /opt/src/dokuwiki.tgz
COPY start.sh /start.sh

RUN chmod +x /start.sh && \
    cd /opt/src/ && \
    tar zxf dokuwiki.tgz && \
    mv dokuwiki-${DOKUWIKI_VERSION} dokuwiki && \
    rm dokuwiki*.tgz && \
    rm -fr /var/www/html && \
    cp -vr dokuwiki /var/www/html && \
    chown -R www-data /var/www/html

CMD ["/start.sh"]
