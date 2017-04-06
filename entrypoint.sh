#!/bin/bash
set -e

PGBOUNCER_LOG=/var/log/postgresql/
PGBOUNCER_USER=postgres
PGBOUNCER_CONFIG_INI=/etc/pgbouncer/pgbouncer.ini

chown root:${PGBOUNCER_USER} ${PGBOUNCER_LOG}
chmod -R 775 ${PGBOUNCER_LOG}

exec pgbouncer -u ${PGBOUNCER_USER} $PGBOUNCER_CONFIG_INI
