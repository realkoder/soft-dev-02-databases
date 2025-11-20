# CheatSheet - Cypher Neo4j

## Data Definition (Schema)

```bash
# CREATE CONSTRAINT - Uniqueness or existence constraint automatically creates index
CREATE CONSTRAINT FOR (p:Person) REQUIRE p.email IS UNIQUE;

# DROP CONSTRAINT
DROP CONSTRAINT FOR (p:Person) REQUIRE p.email IS UNIQUE;

# CREATE INDEX
CREATE INDEX FOR (m:Movie) ON (m.title);

# DROP INDEX
DROP INDEX ON :Movie(title);
```

## Data Creation

```bash
# CREATE Node
CREATE (u:User {first_name: 'Alice', born: 1980})

# CREATE Relationship
MATCH (a:User {first_name: 'Alice'}), (b:User {first_name: 'Bob'}) CREATE (a)-[:KNOWS {since: 2022}]->(b)

# CREATE Full Pattern
CREATE (m:Movie {title: 'The Matrix'})<-[:ACTED_IN]-(p:Person {name: 'Keanu'})
```

## Data Retrieval

```bash
# MATCH Node
MATCH (u:User {first_name: 'Tom'}) RETURN u

# MATCH Pattern
MATCH (u:User)-[:ACTED_IN]->(m:Movie) RETURN u.first_name, m.title

# Any Direction
MATCH (p)-[:KNOWS]-(f) RETURN f.name

# Variable Length Path
MATCH (u1:Uerson)-[:KNOWS*1..3]-(u2:User) RETURN u1, u2

# WHERE Filter
MATCH (m:Movie) WHERE m.released > 2000 RETURN m.title

# OPTIONAL MATCH - Attempts match pattern if not found returns NULL instead filtering whole result
MATCH (u:User {first_name: 'Alice'}) OPTIONAL MATCH (u)-[:LIVES_IN]->(c) RETURN u.first_name, c.first_name

# RETURN
MATCH (u:User) RETURN u.first_name AS FullName, u.born

# ORDER BY
MATCH (u:User) RETURN u.first_name ORDER BY u.first_name DESC

# SKIP & LIMIT
MATCH (u:User) RETURN u.first_name SKIP 10 LIMIT 5

# SHORTEST PATH
MATCH (a:User {first_name:'A'}), (b:User {first_name:'B'}) RETURN shortestPath((a)-[*..15]-(b))
```

## Syntax helpers

| Element	          | Syntax            | Meaning                                                |
|-------------------|-------------------|--------------------------------------------------------|
| Node              | ()                | Matches any node.                                      |
| Node w/ Label     | (:Label)          | Node with a specific label.                            |
| Node w/ Variable  | (n)               | Node bound to the variable n.                          |
| Node w/ Prop      | ({prop: 'value'}) | Node with a property filter.                           |
| Relationship      | []                | Matches any relationship.                              |
| Relationship Type | [:TYPE]           | Relationship of a specific type.                       |
| Directed          | -[r:TYPE]->       | Relationship from left to right, bound to variable r.  |
| Undirected        | -[:TYPE]-         | Relationship in either direction.                      |
| Multiple Types    | `[:TYPE1	         | :TYPE2]`                                               |
| Path              | p=()              | Binds the entire matched pattern (path) to variable p. |
| Parameter         | $name             | Placeholder for external query parameters.             |