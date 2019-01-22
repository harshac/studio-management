FROM nimmis/apache-php7
ADD . /studio-managment
COPY . /studio-managment
WORKDIR /studio-managment
EXPOSE 8000

RUN apt-get update && \
    apt-get -y install libssl-dev && \
    apt-get -y install php7.0-mysql --no-install-recommends apt-utils && \
    apt-get -y install php7.0-mbstring

RUN composer global require "laravel/lumen-installer"

CMD ["php", "-S", "localhost:8000", "-t", "./studio"]

