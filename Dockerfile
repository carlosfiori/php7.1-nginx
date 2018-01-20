FROM ambientum/php:7.1-nginx

# Repository/Image Maintainer
MAINTAINER Carlos Fiori <carlosfiori@gmail.com>

# Reset user to root to allow software install
USER root

# Install sqlite3
RUN echo "--> Installing sqlite3" && \
    apk add --update php7-pdo_sqlite

# Set alias for enable and disable x-debug
RUN alias xon="sudo sed -i 's/;//g' /etc/php7/conf.d/00_xdebug.ini" && \
    alias xoff="xon;sudo sed -i '1s/^/;/' /etc/php7/conf.d/00_xdebug.ini"

# Define the running user
USER ambientum
