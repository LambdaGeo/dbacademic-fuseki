FROM stain/jena-fuseki

WORKDIR /fuseki


RUN mkdir -p configuration
COPY data/ds.ttl /fuseki/configuration/ds.ttl
WORKDIR /fuseki/databases
ADD data/ds.tar.gz /fuseki/databases
COPY shiro.ini /jena-fuseki/shiro.ini



