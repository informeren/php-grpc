FROM amazeeio/php:7.3-cli-v1.4.2

# Install the gRPC PHP extension.
RUN apk add --no-cache --virtual .build-deps \
        autoconf \
        build-base \
        linux-headers \
        php7-dev \
        php7-pear \
 && pecl install grpc \
 && apk del --no-cache .build-deps \
 && docker-php-ext-enable grpc
