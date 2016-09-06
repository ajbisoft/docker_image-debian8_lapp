FROM ajbisoft/debian8_lap
RUN apt-get update && apt-get install -y php5-pgsql postgresql-client \
  && apt-get -y --purge autoremove && apt-get clean && rm -rf /var/lib/apt/lists/*
