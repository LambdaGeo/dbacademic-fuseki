docker-compose build
docker-compose up


docker-compose exec fuseki bash

tar -cvzf ds.tar.gz ds/

split -b 10m "ds.tar.gz" "ds.tar.gz.part-"

$ cat ds.tar.gz.part-* > ds.tar.gz

