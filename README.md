## Log Analysis

*Tools*

```bash
brew install pgbadger
```

*Merge logs*

```bash
cat logs/postgresql-2019-09-17_171107/*.log > x.log
```

*Analysis*

```bash
pgbadger -f stderr logs/postgresql-2019-09-17_192926.log
```

*Check result*

```bash
open out.html
```

## Command

```bash
wk-send-command --sql "show log_filename"
wk-send-command --sql "show log_directory"
```

## Resource

- https://severalnines.com/database-blog/postgresql-log-analysis-pgbadger