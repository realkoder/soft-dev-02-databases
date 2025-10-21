# README

CHECKOUT -> https://neo4j.com/docs/getting-started/languages-guides/community-drivers/#neo4j-ruby
and --> http://neo4jrb.io/

## CONFIGS

Creating a migration run the following:

```bash
# Create migration
rake "neo4j:generate_schema_migration[constraint,User,id,email]"

# RUN MIGRATIONS
rake neo4j:migrate
```

---

<br>

## Docker based neo4j

Ensure to be positioned at root `./` and execute

```bash
docker-compose -f docker-compose.dev.neo4j.yml up
```

Then in browser enter: `http://localhost:7474` to enter **neo4j's** dashboard.

---

<br>

## MISC

For cypher syntax checkout https://neo4j.com/docs/cypher-manual/current/introduction/ and
https://neo4j.com/docs/cypher-cheat-sheet/5/all/