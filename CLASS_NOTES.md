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

<br>


# MISC

![MySQL Architecture](assets/mysql-architecture.png)

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