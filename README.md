# Munchora 👩‍🍳 🧑‍🍳

`Munchora – munch + aura; sounds premium and unique`

<br>

---

## Tech Stack

This full stack webapp is builded in the following way:

### Client

[React Router v7](https://reactrouter.com/start/framework/installation)

### Backend

`Ruby` with `Ruby on Rails` as webframework.

Generating the **Ruby on Rails Api project** with _PostgreSQL_
`rails new munchora-server-relational-db --api --database=postgresql`

Using _dot-env_ for secrets -> add `gem 'dotenv-rails', groups: [:development, :test]` to `Gemfile` and run
`bin/bundle install`.

And since not relying on default dot-env name but `.env.dev` add this to `config/application.rb`:

```ruby
require 'dotenv'

Dotenv.load('.env.dev') if Rails.env.development?
```

### MySQL vs PostgreSQL by ChatGPT

**PostgreSQL**

- Fully ACID-compliant; strong data integrity.
- Advanced SQL support: CTEs, window functions, materialized views.
- Rich data types: JSONB, arrays, UUID, enums.
- Highly extensible with custom types, functions, and extensions (e.g., PostGIS).
- Excels at complex queries, analytics, and hybrid relational + document workloads.

**MySQL**

- ACID compliance depends on storage engine (InnoDB recommended).
- Simpler, faster for basic CRUD and read-heavy web apps.
- Fewer advanced SQL features and data types.
- Mature replication and clustering; easy to scale for reads.
- Widely supported in hosting providers and legacy applications.

**Decision Guide**

- **Choose PostgreSQL** for complex, data-intensive, or feature-rich applications.
- **Choose MySQL** for simple, high-read, fast CRUD applications with broad support.

<br>

---

### Changing from PostgreSQL to MySQL

Add the following gem to Gemfile: ´gem 'mysql2', '>= 0.5'´

Had some issues with dependencies for `mysql-client openssl@3 zstd`
Installed them with brew: `brew install mysql-client openssl@3 zstd`

And then told bundle where to find the dependencies
`bundle config build.mysql2 "--with-mysql-config=/opt/homebrew/opt/mysql-client/bin/mysql_config --with-ldflags=-L/opt/homebrew/opt/openssl@3/lib --with-cppflags=-I/opt/homebrew/opt/openssl@3/include --with-ldflags=-L/opt/homebrew/opt/zstd/lib --with-cppflags=-I/opt/homebrew/opt/zstd/include"`

And the lastly `bundle install`

#### Making it work with UUID's

Needed some extra tweaking to enable UUID triggers for creating users with UUIDs

_docker-compose_

```yml
services:
  mysqldb:
    image: mysql:8.0
    ports: [ "3307:3306" ]
    environment:
      MYSQL_ROOT_PASSWORD: admin
      MYSQL_DATABASE: munchora
      MYSQL_USER: munchora
      MYSQL_PASSWORD: admin
      MYSQL_LOG_BIN_TRUST_FUNCTION_CREATORS: 1
    command: --default-authentication-plugin=mysql_native_password --log-bin-trust-function-creators=1
```

The users migration file

```ruby
create_table :users, id: :string, limit: 36 do |t|
  # ... columns
end

execute <<~SQL
  CREATE TRIGGER before_users_insert
  BEFORE INSERT ON users
  FOR EACH ROW
  BEGIN
    IF NEW.id IS NULL THEN SET NEW.id = UUID();
    END IF;
  END;
SQL
```

---

<br>

#### Generating a controller

To generate a controller use the following `rails generate`

```bash
rails generate controller Api::V1::Admin::Metrics --api
```

<br>

---

### Testing with RSpec

Using docker-compose for the db instance used for test `./docker-compose.test.yml`.

Configuring the test env with _rspec_

Add the following to gem file and install by `bin/bundle install`

```ruby
 # Rspec for TDD
gem 'rspec-rails'
gem 'factory_bot_rails'
gem 'faker'
```

Add test db configs for `config/database.yml`

```yml
test:
  adapter: postgresql
  encoding: unicode
  host: <%= ENV.fetch("DB_HOST", "localhost") %>
  port: <%= ENV.fetch("DB_PORT", "5431") %>
  username: <%= ENV.fetch("DB_USER", "postgres") %>
  password: <%= ENV.fetch("DB_PASSWORD", "password") %>
  pool: 5
  database: munchora_test
```

Create and migrate test db `RAILS_ENV=test bin/rails db:create db:migrate`

Since using _Supabase_ for _dev_ and _prod_ environmets but a more simple dockerbased postgres db the extension
`"graphql.pg_graphql" "vault.supabase_vault"` can't be implemented to the simple postgres db so it's important to use
the unless approach in `schema.rb`:

```ruby
enable_extension "graphql.pg_graphql" unless Rails.env.test?
enable_extension "vault.supabase_vault" unless Rails.env.test?
```

Enable _RSpec_ for _Ruby on Rails_ project:

```bash
bin/rails generate rspec:install
```

Execute the rspec tests

```bash
bin/bundle exec rspec
```

#### Shoulda Matchers with RSpec

Using gem _Shoulda Matchers_ for one liners that test Rails functionality - read more in
this [medium article](https://medium.com/@ajikjikq/shoulda-matchers-with-rspec-3e287774ec17)

Add this gem test group to gem file

```ruby
group :test do
  gem 'shoulda-matchers', '~> 5.0'
end
```

Add this to `spec/rails_helper.rb`

```ruby
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
```

Now we can do stuff like this

```ruby
describe "associations" do
  it { should have_many(:grocery_lists).with_foreign_key(:owner_id).dependent(:destroy) }
  it { should have_many(:grocery_list_shares).dependent(:destroy) }
  it { should have_many(:recipes).dependent(:destroy) }
  it { should have_many(:llm_usages) }
  it { should have_many(:shared_grocery_lists).through(:grocery_list_shares).source(:grocery_list) }
end
```

<br>

---

### Configuring Postgresql

Add _pg_ to `Gemfile`

```ruby
# Use PostgreSQL in dev and prod
gem "pg", group: [:development, :production]

# Use SQLite only for testing
gem "sqlite3", group: [:test]
```

After updating `Gemfile` run `bin/bundle install`

To create the _postgresdb_ execute following: `bin/rails db:create db:migrate`
Which should output the following:

```bash
bin/rails db:create db:migrate
Created database 'munchora'
Created database 'db/test.sqlite3'
```

<br>

---

### Active Records

**User**
_Users_ can either signup manually or by _OAuth_

```bash
bin/rails generate model User fullname:string email:string provider:string uid:string password_digest:string image_src:string bio:string last_signed_in_at:datetime --primary_key_type=uuid
```

Ensure to add the following to make the UUID work:

```ruby
# Add this to createUsers migration
enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
```

Using Gem `bcrypt` -> when you assign to `user.password`, it automatically hashes the password using bcrypt and stores
it in the password_digest column.

---

**Recipe**

```bash
bin/rails generate model Recipe title:string instructions:text created_by:references
```

Edit the generated migration file to reference the _users_table_:

```ruby
t.references :created_by, null: false, foreign_key: { to_table: :users }
```

**UserRecipe**

```bash
bin/rails generate model UserRecipe user:references recipe:references
```

**Ingredient**

```bash
bin/rails generate model Ingredient name:string unit:string
```

**GroceryList**

```bash
bin/rails generate model GroceryList name:string user:references
```

<br>

---

### Authentication / Authorization JWT

Using _JWT_ and Auth helpers as middlewares

Add `jwt` to `Gemfile`

Add the needed files

```bash
# auth_controller for login
touch app/controllers/api/v1/auth_controller.rb
touch app/services/json_web_token.rb
```

<br>

Add _login post_ route to `confi/routes.rb`

```ruby
  namespace :api do
  namespace :v1 do
    resources :users, only: [:index, :show, :create, :update, :destroy]
    post '/login', to: 'auth#login'
  end
end
```

<br>

**Add JWT helper logic service**

```ruby
# Add this to /app/services/json_web_token.rb
class JsonWebToken
  SECRET_KEY = Rails.application.secret_key_base

  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, SECRET_KEY)
  end

  def self.decode(token)
    decoded = JWT.decode(token, SECRET_KEY)[0]
    HashWithIndifferentAccess.new(decoded)
  rescue JWT::DecodeError
    nil
  end
end
```

<br>

**Add to ApplicationController authenticate_user!**
This works as a middleware everytime its called requests needs to habe auth header with valid JWT.

```ruby
# Add this to /app/controllers/application_controller.rb
class ApplicationController < ActionController::API
  def authenticate_user!
    header = request.headers['Authorization']
    token = header.split(' ').last if header.present?

    decoded = JsonWebToken.decode(token)
    @current_user = User.find_by(id: decoded[:user_id]) if decoded

    render json: { error: 'Unauthorized' }, status: :unauthorized unless @current_user
  end
end
```

<br>

**AuthController with login endpoint**

```ruby
# Add this to /app/controllers/api/v1/auth_controller.rb
class Api::V1::AuthController < ApplicationController
  include ActionController::Cookies

  def login
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      token = JsonWebToken.encode(user_id: user.id)
      puts token
      # Set JWT as HttpOnly cookie
      cookies[:jwt_auth] = {
        value: token,
        httponly: true,
        secure: Rails.env.production?,
        same_site: :lax,
        expires: 24.hours.from_now
      }

      render json: { user: user }
    else
      render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end
end
```

<br>

**UsersController example (authenticated route)**

```ruby

class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :update, :destroy]

  # ...
```

### OpenAI LLM USAGE

Relying on: https://github.com/openai/openai-ruby

---

<br>

### Configuring websocket with ActionCable

Relying on sockets for notification emitting between backend and clients.

```bash
bin/rails generate channel Notifications
```

since the following command is made for Ruby on Rails full stack app, but for the projects it's only used as API
framework, then simply delete the unneeded JS file:

```bash
rm app/javascript/channels/notifications_channel.js
```

#### Check the amount of current connections in prod

Establish ssh with prod server. Then enter console mode with running docker instance of Ruby on Rails app.

Here is the needed code to get amount of connections:

```ruby
ActionCable.server.pubsub.redis_connection_for_subscriptions.client("list") if ActionCable.server.pubsub.respond_to?(:redis_connection_for_subscriptions)
```

---

<br>

### Ruby Rails in Production

The application is manually deployed on _Linode Ubuntu VM_ using certbot for HTTPS config and nginx routing incoming
requests.

Client and backend application are each builded by Dockerfiles pushed to _GHCR_ and then pulled from the ubuntu vm for
deployment with _docker-compose_.

When migrations need to be added for the prod env it can be done manually by hand:

```bash
docker exec -it munchora-backend bin/rails db:migrate RAILS_ENV=production
```

## Testing deployed webapp

A quick test in terms of multiple requests towards the deployed webapp using Apache Bench (ab).

`-n 1000`: total number of requests to send

`-c 50`: concurrency level (number of multiple requests at the same time)

```bash
ab -n 1000 -c 50 https://munchora.realkoder.com/
```

Gives the following output:

```text
This is ApacheBench, Version 2.3 <$Revision: 1913912 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking munchora.realkoder.com (be patient)
Completed 100 requests
Completed 200 requests
Completed 300 requests
Completed 400 requests
Completed 500 requests
Completed 600 requests
Completed 700 requests
Completed 800 requests
Completed 900 requests
Completed 1000 requests
Finished 1000 requests


Server Software:        nginx/1.24.0
Server Hostname:        munchora.realkoder.com
Server Port:            443
SSL/TLS Protocol:       TLSv1.2,ECDHE-ECDSA-CHACHA20-POLY1305,256,256
Server Temp Key:        ECDH X25519 253 bits
TLS Server Name:        munchora.realkoder.com

Document Path:          /
Document Length:        37138 bytes

Concurrency Level:      50
Time taken for tests:   24.655 seconds
Complete requests:      1000
Failed requests:        0
Total transferred:      37307000 bytes
HTML transferred:       37138000 bytes
Requests per second:    40.56 [#/sec] (mean)
Time per request:       1232.740 [ms] (mean)
Time per request:       24.655 [ms] (mean, across all concurrent requests)
Transfer rate:          1477.71 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:       78  102  41.0     92     300
Processing:   104 1101 310.1   1054    1905
Waiting:       98 1098 310.1   1053    1902
Total:        242 1202 303.9   1147    1996

Percentage of the requests served within a certain time (ms)
  50%   1147
  66%   1295
  75%   1382
  80%   1418
  90%   1658
  95%   1852
  98%   1917
  99%   1946
 100%   1996 (longest request)
```

---

<br>

## LINKS

[Medium article - Benchmarking PostgreSQL vs modern db stack](https://medium.com/@harishsingh8529/i-benchmarked-postgresql-18-vs-the-modern-database-stack-the-results-will-shock-you-4af4a6199dc0)