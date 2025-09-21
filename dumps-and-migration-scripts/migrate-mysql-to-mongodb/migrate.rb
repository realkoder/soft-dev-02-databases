require 'dotenv/load'
require 'mysql2'
require 'mongo'

mysql_client = Mysql2::Client.new(
  host: ENV['MYSQL_HOST'],
  username: ENV['MYSQL_USER'],
  password: ENV['MYSQL_PASSWORD'],
  database: ENV['MYSQL_DATABASE'],
  port: ENV['MYSQL_PORT'],
)

puts "LOOK #{ENV['MONGODB_CONNECTION_STRING']}"

client = Mongo::Client.new(ENV['MONGODB_CONNECTION_STRING'])

results = mysql_client.query("SELECT * FROM users") # Example table
results.each do |row|
  puts row
end

# Get the users collection
users = client[:users]

# Fetch and log users
users.find.each do |doc|
  puts doc.inspect
end