docker-compose build
docker-compose up


docker-compose exec fuseki bash

tar -cvzf ds.tar.gz ds/

split -b 10m "ds.tar.gz" "ds.tar.gz.part-"

$ cat ds.tar.gz.part-* > ds.tar.gz

para rodar mo heroku, tive que mudar o entrypoint, para poder receber uma porta

    heroku container:login
    heroku container:push web --app dbacademic
    heroku container:release web --app dbacademic
