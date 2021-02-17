#!/usr/bin/env bash
pg_dump -h 127.0.0.1 -U postgres -p 5432 -c -t 'odk_sync."__ODKTABLES__TABLE"*"ODK"' postgres > db.sql
PGPASSWORD=<PASSWORD> psql -h <HOST> -U <USER> -p <PORT> postgres -f db.sql