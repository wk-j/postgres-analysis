## PG

```bash
brew install pgbadger

rm logs/*
pgbadger -f stderr (find . -name "postgresql*.log")
docker exec -it postgresanalysis_postgres_1 bash
```

## Command

```bash
wk-send-command --sql "show log_filename"
wk-send-command --sql "show log_directory"
```

## Resource

- https://severalnines.com/database-blog/postgresql-log-analysis-pgbadger