FROM ajbisoft/debian8_lap
MAINTAINER Jakub Kwiatkowski <jakub@ajbisoft.pl>
RUN apt-get update \
  && apt-get install -y wget php5-pgsql postgresql-client fontconfig libfontconfig1 libfreetype6 libpng12-0 libjpeg62-turbo \
    libx11-6 libxext6 libxrender1 xfonts-base xfonts-75dpi \
  && wget -nv https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.2.1/wkhtmltox-0.12.2.1_linux-jessie-amd64.deb -P /root/ \
  && dpkg -i /root/wkhtmltox-0.12.2.1_linux-jessie-amd64.deb \
  && rm /root/wkhtmltox-0.12.2.1_linux-jessie-amd64.deb \
  && apt-get -y --purge remove wget && apt-get -y --purge autoremove \
  && apt-get clean && rm -rf /var/lib/apt/lists/*
