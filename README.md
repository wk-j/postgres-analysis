## PG

```bash
brew install pgbadger

pgbadger -f stderr logs/postgresql-2019-09-14_000000.log
pgbadger -f stderr -p '%t:%r:%u@%d:[%p]:' logs/postgresql-2019-09-14_000000.log

docker attach  postgresanalysis_postgres_1 bash

```