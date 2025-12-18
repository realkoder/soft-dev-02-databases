# Cheatsheet - SQL (MySQL) commands

Basic commands for interacting with MySQL using SQL syntax

```sql
# ===================
# Database Basics
# ===================
# show databases
SHOW DATABASES;

# get cur database
SELECT DATABASE();

# Add new database
CREATE DATABASE my_app;

# set cur database
USE my_database;

# delete database
DROP DATABASE my_app;

# ===================
# Tables
# ===================
# show tables
SHOW TABLES;

# create a table
CREATE TABLE recipes
(
    id       INT AUTO_INCREMENT PRIMARY KEY,
    title    VARCHAR(100),
    category VARCHAR(50)
);

# delete/drop table
DROP TABLE recipes;

# show table structure
DESCRIBE recipes;

# ===================
# CRUD — Core Data Operations
# ===================
# read
SELECT *
FROM recipes;
# or with filtering
SELECT *
FROM recipes
WHERE category = 'Breakfast';

# insert new data
INSERT INTO recipes (title, category)
VALUES ('Pancakes', 'Breakfast');

# update existing data
UPDATE recipes
SET category = 'Dessert'
WHERE title = 'Pancakes';

# delete data
DELETE
FROM recipes
WHERE title = 'Pancakes';

# ===================
# Transactions
# ===================
# get isolation levels settings 
SHOW VARIABLES LIKE 'transaction_isolation';

# for next transaction:
SET TRANSACTION ISOLATION LEVEL serializable;
# for the whole session/connection:
SET SESSION TRANSACTION ISOLATION LEVEL serializable;
# for all the future sessions:
SET GLOBAL TRANSACTION ISOLATION LEVEL serializable;

# keywords using transactions
BEGIN;
COMMIT;
ROLLBACK;
```

## Transactional isolation level

Isolation is one of the four **ACID** properties of _database transactions_:

It defines how visible uncommitted changes are to other concurrent transactions.

In other words:

Isolation controls how and when the effects of one transaction become visible to others.

If multiple users (or threads) are reading and writing to the same data at the same time,
the isolation level determines how “independent” those transactions are from one another.

| Isolation Level      | Prevents Dirty Reads | Prevents Non-Repeatable Reads | Prevents Phantom Reads | Description                                                                                 | Typical locking behavior in MySQL (InnoDB)                                                                          |
|----------------------|----------------------|-------------------------------|------------------------|---------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|
| **READ UNCOMMITTED** | ❌                    | ❌                             | ❌                      | Transactions can read uncommitted (dirty) data. Fastest, least safe.                        | **No read locks (shared locks), minimal write locks**                                                               |
| **READ COMMITTED**   | ✅                    | ❌                             | ❌                      | Each query sees only committed data, but the same query may return different results later. | **Shared locks only held while reading, write locks still held until commit**                                       |
| **REPEATABLE READ**  | ✅                    | ✅                             | ❌                      | Ensures that if you re-read a row, it stays the same within your transaction.               | **Shared locks held for the duration of transaction (next reads see the same data), write locks held until commit** |
| **SERIALIZABLE**     | ✅                    | ✅                             | ✅                      | Transactions are fully isolated; executed as if one after another. Safest, but slowest.     | **Reads acquire shared locks, writes acquire exclusive locks; transactions behave as if executed sequentially**     |

### Explicit locks to use

```sql
# ============
# table locks
# ============
# shared lock
LOCK TABLES table_name READ;
# exclusive lock
LOCK TABLES table_name WRITE;

# ============
# row locks
# ============
# shared lock = multiple can read, no one can write
SELECT *
FROM orders
WHERE id = 123 LOCK IN SHARE MODE;

# exclusive lock = only one can write, others blocked from reading/writing.
SELECT *
FROM orders
WHERE id = 123 FOR
UPDATE;
```

---

### Savepoints for transactional state

A SAVEPOINT in MySQL is a way to create a named point within a transaction that you can roll back to without rolling
back the entire transaction. Think of it as a “bookmark” inside a transaction.

```sql
START TRANSACTION;

INSERT INTO orders (id, product)
VALUES (1, 'Apple'); -- Step 1

SAVEPOINT step1_done;

INSERT INTO orders (id, product)
VALUES (2, 'Banana');
-- Step 2

-- something goes wrong
ROLLBACK TO SAVEPOINT step1_done; -- Undo Step 2 only

INSERT INTO orders (id, product)
VALUES (3, 'Cherry'); -- Step 3

COMMIT; -- Only Step 1 and Step 3 are committed
```

---

### Prepared Statements

How **prepared statements** are executed in _SQL_

```mysql
PREPARE q FROM 'SELECT * from users WHERE first_name = ?';
SET @name = 'Alexander';
EXECUTE q USING @name;
DEALLOCATE PREPARE q;
```