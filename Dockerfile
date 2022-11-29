FROM php:8.1.11-apache

COPY ./php.ini /usr/local/etc/php/

RUN apt-get update && apt-get install -y git zip unzip sudo \
  && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
  && php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
  && php composer-setup.php \
  && php -r "unlink('composer-setup.php');" \
  && mv composer.phar /usr/local/bin/composer

RUN git config --global user.email "you@example.com"
RUN git config --global user.name "Your Name"

RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | sudo -E bash \
  && sudo apt install symfony-cli

# RUN symfony new my_project_directory --version="6.1.*" --webapp \
#  && cd my_project_directory
#  && composer require --dev symfony/profiler-pack