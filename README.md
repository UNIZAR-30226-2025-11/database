# OBSOLETE

We've moved the database definition to the backend since launching both containers separately was causing trouble.

# Database

This repository contains the Compose configuration to lauch a Postgres database alongside an Adminer page locally.

## Start

```bash
# You might need to run this script as sudo
docker compose up
docker compose up -d            # If you want to run the image(s) in the background
docker compose up database      # If you only want the database and don't need Adminer
docker compose stop
docker compose down
```

## Reset

The init scripts will only run if the container's data directory is empty. If you need to reset the database:

```bash
docker compose stop                     # Stop the containers
docker compose down                     # Remove containers and network
docker compose volume rm db_data        # Might be named differently, use docker volume ls to find out
```

## Adminer

**Adminer** is a web interface for looking up the database. It may be a better alternative for looking up the database than psql commands.

To log in,

- Select PostgreSQL
- Server is `database` (the same as the service name in the yml file)
- Username, password and database as defined in the env file

## Init script

An initialization script is included in `sql/init.sql`. THIS IS THE ONLY FILE LOADED. You may add new files through the yml file, and add examples for more complex queries.
