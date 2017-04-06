# docker-pgbouncer
Docker for pgbouncer with multiple hosts

Run with `docker run -v <local_config_repository>:/etc/pgbouncer:ro -v <local_log_repository>:/var/log/postgresql:rw -p 6432:6432 pgbouncer`
