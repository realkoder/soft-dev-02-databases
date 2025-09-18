# Short Installation Guide

The following is installation guides for the different database approaches.
Each approach does create a docker container running the specific database seeded and ready to connect and interact with
through your favorite of use DB connector tool.

## Relational Database

**Docker Compose for MySQL**
_Create a docker-compose.mysql.yml file:_

```yml
version: '3.8'
services:
  mysql_db:
    image: mysql:8.0
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_DATABASE: munchora
      MYSQL_USER: developer
      MYSQL_PASSWORD: dev-pswd
    ports:
      - "3306:3306"
    volumes:
      - mysql_data:/var/lib/mysql
      - ./db/mysql-dump.sql:/docker-entrypoint-initdb.d/dump.sql
volumes:
  mysql_data:
```

---

<br>

## NoSQL Document Based Database

---

<br>

## Graph Database

