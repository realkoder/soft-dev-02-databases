require 'dotenv/load'
require 'mysql2'
require 'active_support/core_ext/object/blank'
require 'neo4j/driver'

# =====================
# ESTABLISH CONNECTION
# =====================

mysql_client = Mysql2::Client.new(
  host: ENV['MYSQL_HOST'],
  username: ENV['MYSQL_USER'],
  password: ENV['MYSQL_PASSWORD'],
  database: ENV['MYSQL_DATABASE'],
  port: ENV['MYSQL_PORT'],
)

neo4j_driver = Neo4j::Driver::GraphDatabase.driver(ENV['NEO4J_URI'], Neo4j::Driver::AuthTokens.basic(ENV['NEO4J_USER'], ENV['NEO4J_PASSWORD']))

# =====================
# MIGRATE USERS
# =====================

puts "Migrating users..."

users = mysql_client.query("SELECT * FROM users")

# DELETES USERS BEFORE MIGRATING
neo4j_driver.session do |session|
  session.write_transaction do |tx|
    tx.run("MATCH (u:User) DELETE u")
  end
end

neo4j_driver.session do |session|
  users.each do |row|
    session.write_transaction do |tx|
      tx.run(
        "CREATE (u:User {
        id: $id,
        first_name: $first_name,
        last_name: $last_name,
        email: $email,
        provider: $provider,
        uid: $uid,
        password_digest: $password_digest,
        image_src: $image_src,
        bio: $bio,
        last_signed_in_at: $last_signed_in_at,
        created_at: $created_at,
        updated_at: $updated_at
      })",
        id: row['id'],
        first_name: row['first_name'],
        last_name: row['last_name'],
        email: row['email'],
        provider: row['provider'],
        uid: row['uid'],
        password_digest: row['password_digest'],
        image_src: row['image_src'],
        bio: row['bio'],
        last_signed_in_at: row['last_signed_in_at'],
        created_at: row['created_at'],
        updated_at: row['updated_at']
      )
    end
  end
end

puts "#{users.size} users migrated from MySQL to Neo4j"

# =====================
# MIGRATE FEEDBACKS
# =====================

puts "Migrating feedbacks..."

# DELETES FEEDBACKS BEFORE MIGRATING
neo4j_driver.session do |session|
  session.write_transaction do |tx|
    tx.run("MATCH (u:Feedback) DELETE u")
  end
end

feedbacks = mysql_client.query("SELECT * FROM feedbacks")

neo4j_driver.session do |session|
  feedbacks.each do |row|
    session.write_transaction do |tx|
      tx.run(
        "CREATE (f:Feedback {
        name: $name,
        message: $message,
        category: $category,
        created_at: $created_at,
        updated_at: $updated_at
      })",
        name: row['name'],
        email: row['email'],
        message: row['message'],
        category: row['category'],
        created_at: row['created_at'],
        updated_at: row['updated_at']
      )
    end
  end
end

puts "#{feedbacks.size} feedbacks migrated from MySQL to Neo4j"
