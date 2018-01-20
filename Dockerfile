FROM ambientum/php:7.1-nginx

# Repository/Image Maintainer
MAINTAINER Carlos Fiori <carlosfiori@gmail.com>

# Reset user to root to allow software install
USER root

# Install nginx from dotdeb (already enabled on base image)
RUN echo "--> Installing sqlite3" && \
    apk add --update php7-pdo_sqlite


# Define the running user
USER ambientum
