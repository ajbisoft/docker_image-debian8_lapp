FROM ajbisoft/debian9_lap
MAINTAINER Jakub Kwiatkowski <jakub@ajbisoft.pl>
RUN apt-get update \
  && apt-get install -y wget php7.1-pgsql postgresql-client fontconfig libfontconfig1 libfreetype6 libpng12-0 libjpeg62-turbo \
    libx11-6 libxext6 libxrender1 xfonts-base xfonts-75dpi \
  && wget -nv https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz -P /root/ \
  && cd /root/ && tar -xf /root/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz \
  && mv wkhtmltox/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf \
  && mv wkhtmltox/bin/wkhtmltoimage /usr/local/bin/wkhtmltoimage \
  && rm -rf /root/wkhtmltox* \
  && apt-get -y --purge remove wget && apt-get -y --purge autoremove \
  && apt-get clean && rm -rf /var/lib/apt/lists/*
