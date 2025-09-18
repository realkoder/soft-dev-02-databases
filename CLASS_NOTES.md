# Software Dev - Databases - Notes & Misc 💽

#### Cardinality & Modality

_Cardinality_ defines the range of object-to object Relationships. Expected values are 1:1, 1:N, N:M

![Cardinality Examples](assets/cardinality-examples.png)

_Modality_ indicates wether or not a relationship between objects is mandatory. Expected values are 0 or 1 only.

![Modality Examples](assets/modality-examples.png)

---

<br>

# Normalization

**1. Normal form**

![1. normal form](assets/1-normal-form.png)

---

**2. Normal form**

![2. normal form](assets/2-normal-form.png)

---

**3. Normal form**

![3. normal form](assets/3-normal-form.png)

---

<br>

# ERD Entity Relational Diagram

![Conceptual model vs Logical model vs Data model](assets/different-erds.png)

---

<br>

# Gemini's take on ACID 🎇

**Atomicity**: All operations within a transaction either complete successfully or are entirely rolled back, preventing
partial updates

**Consistency**: Transactions move the database from one valid state to another, maintaining data integrity and rules.

**Isolation**: Concurrent transactions do not interfere with each other, appearing to execute in isolation.

**Durability**: Once a transaction is committed, its changes are permanent and survive system failures.

_ACID_ properties ensure high data integrity and reliable transactions, crucial for applications like financial systems
where data accuracy is paramount.
Common in traditional relational databases (_MySQL_, _PostgreSQL_) and increasingly supported by some _NoSQL_
databases (_MongoDB_, _RavenDB_) for multi-document transactions. Implementing full _ACID_ can add complexity and cost.

---

# Deepseek on BASE

### BASE Properties

_BASE_ is a model that emerged with modern _NoSQL_ databases (like Cassandra, MongoDB, DynamoDB) and distributed
systems.
It prioritizes availability and scalability over immediate consistency.

**_BA - Basically Available_**
Concept: The system guarantees that it will respond to every request (even if it's a failure message). The system
remains available for reading and writing, even during failures, perhaps by degrading performance or showing stale data.

Example: If a node in a distributed database cluster fails, the system will still handle your read/write requests using
the other available nodes, even if the data on those nodes isn't the very latest.

**_S - Soft State_**

Concept: The state of the system may change over time, even without input (e.g., during the process of replication and
achieving eventual consistency). The data is not immediately consistent across all nodes.

Example: After you update your profile picture, different users might see the old picture for a short period until the
change is replicated to all servers around the world.

**_E - Eventual Consistency_**

Concept: The system guarantees that if no new updates are made to a given data item, eventually all accesses to that
item will return the last updated value. Given enough time, all replicas will become consistent.

Example: This is the "processing" state in a payment app. Your friend's account doesn't show the money instantly, but
after a few seconds or minutes, it will appear. The system eventually becomes consistent.

## Deepseek - ACID vs BASE

**_ACID_** is like a traditional bank teller. The transaction is all-or-nothing. The money is deducted from one account
and
added to the other instantly and guaranteed. You wait for the confirmation before leaving the counter. It's consistent
and safe.

**_BASE_** is like writing a check or using a modern payment app. The transaction is eventual. The app might say "
payment
processing." The money leaves your account now, but it might take a few seconds, minutes, or even hours to show up in
the recipient's account. The system is highly available and fast for you, with the promise that it will become
consistent later. It's fast and available.

---

<br>

## Triggers

**🔹 What Triggers Do**

A trigger in MySQL is a piece of logic that automatically runs before or after an INSERT, UPDATE, or DELETE on a table.
They’re useful for:

Data consistency (enforcing rules beyond simple constraints)

Auditing (keeping a history of changes)

**Example of preventing negative _servings_ for Munchora _recipes_**

```mysql
CREATE TRIGGER validate_recipe_servings
    BEFORE INSERT
    ON recipes
    FOR EACH ROW
BEGIN
    IF NEW.servings < 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Servings must be at least 1';
    END IF;
END;
```

This will throw an error if someone tries:

```mysql
INSERT INTO recipes (user_id, title, servings)
VALUES ('123', 'Pizza', -5);
```

### 🔹 Example: Auditing Trigger for Munchora - Recipes

Let’s say you want to keep a history of updates (title, description, etc.) for versioning or “undo” functionality.

First, create an audit table:

```ruby
create_table :recipe_audits, id: :bigint do |t|
  t.string :recipe_id, limit: 36, null: false
  t.string :user_id, limit: 36, null: false
  t.string :action, null: false # 'INSERT' | 'UPDATE' | 'DELETE'
  t.json :old_data
  t.json :new_data
  t.timestamps
end
```

Then, add a trigger:

```ruby
execute <<~SQL
  CREATE TRIGGER after_recipe_update
  AFTER UPDATE ON recipes
  FOR EACH ROW
  BEGIN
    INSERT INTO recipe_audits (recipe_id, user_id, action, old_data, new_data, created_at, updated_at)
    VALUES (
      OLD.id,
      OLD.user_id,
      'UPDATE',
      JSON_OBJECT(
        'title', OLD.title,
        'description', OLD.description,
        'instructions', OLD.instructions,
        'tags', OLD.tags
      ),
      JSON_OBJECT(
        'title', NEW.title,
        'description', NEW.description,
        'instructions', NEW.instructions,
        'tags', NEW.tags
      ),
      NOW(),
      NOW()
    );
  END;
SQL

```

---

## Stored Procedures

### 🔹 Why Stored Procedures Exist

Stored procedures are essentially:

Reusable server-side logic that runs inside MySQL.

They’re great when you want to encapsulate business rules or heavy operations in the DB, so every client/app doesn’t
have to duplicate the logic.

They can reduce network round-trips (one procedure call instead of many small queries).

---

### 🔹 Where They Could Be Used in Munchora

#### _1._ Generating a User’s Grocery List

Suppose you want to build a grocery list from all recipes a user selected.

Without a procedure: your backend has to query ingredients, sum quantities, normalize units, and then insert into
_grocery_lists_.

With a procedure: you could encapsulate that logic in _sp_generate_grocery_list(user_id)_.

**Input**: _user_id_

**Logic**: _aggregate ingredients across recipes, handle duplicates, convert units_

**Output**: _rows in grocery_list_items_

This makes the logic consistent and reusable no matter which part of the app calls it.

#### _2._ Calculating Nutrition Totals

Suppose you want to calculate calories, protein, etc. across all recipes in a user’s plan.

A procedure _sp_calculate_nutrition(plan_id)_ could:

Join recipes + ingredients + nutrition info

Sum totals

Store results in a summary table

Now, instead of repeating a heavy multi-join query in Rails, you just call the _procedure_.

#### _3._ Audit Logging

Imagine you want to track every time a grocery list is updated (for future “undo” features or analytics).

A procedure _sp_update_grocery_item(item_id, new_qty)_ could:

Update the item

Insert a row into _grocery_list_audit_ automatically

This guarantees that every update also logs history — can’t be skipped by accident in app code.

---

### 🔹 When NOT to Use Stored Procedures

If the logic is simple CRUD (insert, update, delete) → keep it in Rails.

If logic changes frequently → easier to maintain in application code.

If portability matters → procedures are MySQL-specific (locks you in).

---

<br>

# MISC

## NoSQL

_NoSQL_ means **_not only SQL_**

---

![MySQL Architecture](assets/mysql-architecture.png)

---

## DB Terminology

![DB terminology](assets/db-terminology.png)

---

![SQL Sub Languages](assets/sql-sub-languages.png)

_(Links provided here)_

[Chapter 15 SQL Statements](https://dev.mysql.com/doc/refman/8.0/en/sql-statements.html)

[Relational Algebra](https://en.wikipedia.org/wiki/Relational_algebra#Left_outer_join_.28.E2.9F.95.29)

[Relational Algebra in DBMS: Operations with Examples](https://www.guru99.com/relational-algebra-dbms.html)

---

![SQL Join Summary](assets/sql-join-summary.png)

---

![SQL Union](assets/sql-union.png)

---

![SQL Aggregate Functions](assets/sql-aggregate-functions.png)

---

![SQL Groupd by Having](assets/sql-group-by-having.png)

---

<br>

# SQL commands

Essential and important _sql_ commands

```sql
-- Show all databases
SHOW
DATABASES;

-- Select a database
USE
database_name;

-- Show all tables in the selected database
SHOW
TABLES;

-- Describe a table structure
DESCRIBE table_name;

-- Show create table statement
SHOW
CREATE TABLE table_name;

-- Show indexes of a table
SHOW
INDEX FROM table_name;

-- Show current database
SELECT DATABASE();

-- Show all columns of a table
SHOW
COLUMNS FROM table_name;

-- Show table status (engine, rows, etc.)
SHOW
TABLE STATUS;

-- Show all foreign keys for a table
SELECT TABLE_NAME,
       COLUMN_NAME,
       CONSTRAINT_NAME,
       REFERENCED_TABLE_NAME,
       REFERENCED_COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'database_name'
  AND TABLE_NAME = 'table_name'
  AND REFERENCED_TABLE_NAME IS NOT NULL;
```

---

<br>

# Links

[ERD, Cardinality, Relations, etc. explained](https://www.lucidchart.com/pages/er-diagrams)

---

```text
Peter Chen, who developed entity-relationship modeling and published his work in 1976,
was one of the pioneers of using the entity relationship concepts in software and
information system modeling and design.
The Chen ERD notation is still used and is considered to present a 
more detailed way of representing entities and relationships.
```

[Chen Notation](https://vertabelo.com/blog/chen-erd-notation/)

---

```text
The most recognizable characteristic of crow’s foot notation (also known as IE notation)
is that it uses graphical symbols to indicate the ‘many’ side of the relationship.
The three-pronged ‘many’ symbol is also how this widely-used notation style got its name.
Let’s see where crow’s foot is placed in the history of data modeling and
take a look at its symbols.
```

[Crows Foot Notation](https://vertabelo.com/blog/crow-s-foot-notation/)

---

[Sample Databases - MySQL](https://www3.ntu.edu.sg/home/ehchua/programming/sql/SampleDatabases.html)

[Guide To Design Database For Inventory Management System In MySQL](https://www.tutorials24x7.com/mysql/guide-to-design-database-for-inventory-management-system-in-mysql)

[Best practices for modeling relational data in DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/bp-relational-modeling.html)

[Elasticsearch - Explain to me like im 5](https://www.reddit.com/r/elasticsearch/comments/uuwafh/can_someone_explain_to_me_like_im_5_how/)