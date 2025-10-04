# Short Installation Guide ⚙️

The following is an installation guide for the different database approaches.

It's required to `git clone https://github.com/realkoder/soft-dev-02-databases.git`

---

## Relational Database - munchora-server-relational-db

### _Recommended_: Start MySQL seeded and ready to query using docker-compose

In terminal cd to  `./munchora-server-relational-db`

Start MySQL by `docker-compose -f docker-compose.mysql-seeded.yml up -d`

Enter the docker based Mysql by `docker exec -it mysql_db mysql -udeveloper -pdev-pswd munchora`

---

### Use Ruby on Rails app for seeding and querying MySQL DB

In terminal cd to **root** of project and start _docker-compose MySQL_
`docker-compose -f docker-compose.dev.mysql.yml up -d`

Add `.env.dev` file in `./munchora-server-relational-db` with following:

```dotenv
MYSQL_USER=munchora
MYSQL_PASSWORD=admin

# GOOGLE OAUTH
GOOGLE_CLIENT_ID=
GOOGLE_CLIENT_SECRET=

# OpenAI
OPENAI_API=

# REDIS
UPSTASH_REDIS_URL=
```

Cd to  `./munchora-server-relational-db` and install dependencies `bundle install`.

Then migrate and seed MySQL database by `bin/rails db:migrate` & `bin/rails db:seed`.

Enter Ruby in _Rails Console_ mode to interact through _ActiveRecord_ with models and query DB
or start _rails server_ `bin/rails s` and interact through _HTTP_ requests.


---

<br>

## NoSQL Document Based Database



---

<br>

## Graph Database

