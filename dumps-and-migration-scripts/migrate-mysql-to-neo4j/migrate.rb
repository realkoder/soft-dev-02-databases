require 'dotenv/load'
require 'mysql2'
require 'neo4j'

# =====================
# ESTABLISH CONNECTIONS
# =====================

mysql_client = Mysql2::Client.new(
  host: ENV['MYSQL_HOST'],
  username: ENV['MYSQL_USER'],
  password: ENV['MYSQL_PASSWORD'],
  database: ENV['MYSQL_DATABASE'],
  port: ENV['MYSQL_PORT']
)

neo4j_session = Neo4j::Session.open(:bolt, ENV['NEO4J_URI'], basic_auth: { username: ENV['NEO4J_USER'], password: ENV['NEO4J_PASSWORD'] })

# =====================
# MIGRATE USERS
# =====================

puts "Migrating users..."

users = mysql_client.query("SELECT * FROM users")
users.each do |row|
  neo4j_session.query(
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

puts "#{users.size} users migrated from MySQL to Neo4j"

# =====================
# MIGRATE FEEDBACKS
# =====================

puts "Migrating feedbacks..."

feedbacks = mysql_client.query("SELECT * FROM feedbacks")
feedbacks.each do |row|
  neo4j_session.query(
    "MATCH (u:User {email: $email})
     CREATE (f:Feedback {
       name: $name,
       message: $message,
       category: $category,
       created_at: $created_at,
       updated_at: $updated_at
     })-[:GIVEN_BY]->(u)",
    name: row['name'],
    email: row['email'],
    message: row['message'],
    category: row['category'],
    created_at: row['created_at'],
    updated_at: row['updated_at']
  )
end

puts "#{feedbacks.size} feedbacks migrated from MySQL to Neo4j"
