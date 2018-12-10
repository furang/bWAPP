FROM tutum/lamp:latest

RUN apt-get update && apt-get install -y php5-dev dh-make-php

RUN yes | pecl install xdebug-2.5.5

RUN rm -rf /app

CMD ["/run.sh"]