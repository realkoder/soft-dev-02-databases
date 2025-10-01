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
