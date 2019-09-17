## PG

```bash
brew install pgbadger

rm logs/*
pgbadger -f stderr (find . -name "postgresql*.log")
docker exec -it postgresanalysis_postgres_1 bash

cat logs/postgresql-2019-09-17_171107/*.log > x.log
pgbadger -f stderr x.log
```

## Command

```bash
wk-send-command --sql "show log_filename"
wk-send-command --sql "show log_directory"
```

## Resource

- https://severalnines.com/database-blog/postgresql-log-analysis-pgbadger