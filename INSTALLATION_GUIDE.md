# Short Installation Guide

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

