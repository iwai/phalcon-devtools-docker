
FROM phalconphp/php:latest

MAINTAINER Yuji Iwai <iwai.ug@gmail.com>

RUN docker-php-source extract \
    && mkdir -p /var/log/apt \
    && mkdir -p /var/cache/apt/archives/partial \
    && apt-get update \
    && apt-get install -y --no-install-recommends libyaml-dev \
    && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    && rm -rf /var/lib/apt/lists/* \
    && pecl install yaml \
    && docker-php-ext-enable yaml \
    && docker-php-source delete

RUN curl -Ss -LO https://github.com/phalcon/phalcon-devtools/archive/v3.2.13.tar.gz \
  && tar zxf v3.2.13.tar.gz \
  && mv phalcon-devtools-3.2.13 phalcon-devtools \
  && ln -s /phalcon-devtools/phalcon.php /usr/bin/phalcon && chmod ugo+x /usr/bin/phalcon

VOLUME ["/project"]

WORKDIR /project

CMD [ "/usr/bin/phalcon" ]