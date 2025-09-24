# Short Installation Guide

The following is an installation guide for the different database approaches.

It's required to `git clone https://github.com/realkoder/soft-dev-02-databases.git`

---

## Relational Database - munchora-server-relational-db

### Start MySQL seeded and ready to query using docker-compose

In terminal cd to  `./munchora-server-relational-db`

Start MySQL by `docker-compose -f docker-compose.mysql-seeded.yml up -d`

Enter the docker based Mysql by `docker exec -it mysql_db mysql -udeveloper -pdev-pswd munchora`

---

### Use Ruby on Rails app for seeding and querying MySQL DB

In terminal cd to **root** of project and start _docker-compose MySQL_
`docker-compose -f docker-compose.dev.mysql.yml up -d`

Cd to  `./munchora-server-relational-db` and start **_Ruby on Rails API server_** `bin/rails s`

Then migrate and seed MySQL database by `bin/rails db:migrate` & `bin/rails db:seed`

Enter Ruby in Rails Console mode to interact througub ActiveRecord with models and query DB.


---

<br>

## NoSQL Document Based Database



---

<br>

## Graph Database

