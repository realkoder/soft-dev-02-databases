# README

CHECKOUT -> https://neo4j.com/docs/getting-started/languages-guides/community-drivers/#neo4j-ruby
and --> http://neo4jrb.io/

## CONFIGS

Creating a migration run the following:

```bash
# Create migration for constraint
rake "neo4j:generate_schema_migration[constraint,User,id,email]"

# Create migration for indexes
rake "neo4j:generate_schema_migration[index,Recipe,title,is_public,user_id]"

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

## CHATGPT ON IN vs OUT relationships

_The core idea: relationships have a direction_

Every relationship in Neo4j has a direction.
Think of it like an arrow:

```text
(A) -[:RELATIONSHIP_TYPE]-> (B)
```

That means:

Node A is the start (the “outgoing” side)

Node B is the end (the “incoming” side)

ActiveGraph model this direction using `:out` or `:in` in **has_one** / **has_many** declarations.

---

<br>

## MISC

For cypher syntax checkout https://neo4j.com/docs/cypher-manual/current/introduction/ and
https://neo4j.com/docs/cypher-cheat-sheet/5/all/