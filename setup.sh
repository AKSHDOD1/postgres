#!/bin/bash

docker pull postgres

docker run -d --name my_postgres -v my_dbdata:/var/lib/postgresql/data -p 54320:5432 postgres

docker exec -it my_postgres psql -U postgres
