require 'dotenv/load'
require 'mysql2'
require 'active_support/core_ext/object/blank'
require 'neo4j/driver'

class Neo4jConnector
  attr_reader :drivers

  def initialize
    @drivers = connect
    reset_graph_db(@drivers[:neo4j_driver])
  end

  private

  def connect
    mysql_client = Mysql2::Client.new(
      host: ENV['MYSQL_HOST'],
      username: ENV['MYSQL_USER'],
      password: ENV['MYSQL_PASSWORD'],
      database: ENV['MYSQL_DATABASE'],
      port: ENV['MYSQL_PORT'],
    )

    neo4j_driver = Neo4j::Driver::GraphDatabase.driver(ENV['NEO4J_URI'], Neo4j::Driver::AuthTokens.basic(ENV['NEO4J_USER'], ENV['NEO4J_PASSWORD']))

    { neo4j_driver: neo4j_driver, mysql_client: mysql_client }
  end

  def reset_graph_db(neo4j_driver)
    puts 'resetting neo4j db'

    neo4j_driver.session do |session|
      # Drop all constraints
      session.write_transaction do |tx|
        constraints = tx.run("SHOW CONSTRAINTS YIELD name").map { |row| row["name"] }
        constraints.each do |name|
          tx.run("DROP CONSTRAINT #{name}")
        end
      end

      # Drop all indexes
      session.write_transaction do |tx|
        indexes = tx.run("SHOW INDEXES YIELD name").map { |row| row["name"] }
        indexes.each do |name|
          tx.run("DROP INDEX #{name}")
        end
      end

      # Delete all nodes
      session.write_transaction do |tx|
        tx.run("MATCH (n) DETACH DELETE n")
      end
      mysql_client = Mysql2::Client.new(
        host: ENV['MYSQL_HOST'],
        username: ENV['MYSQL_USER'],
        password: ENV['MYSQL_PASSWORD'],
        database: ENV['MYSQL_DATABASE'],
        port: ENV['MYSQL_PORT'],
      )
    end
    puts 'neo4j db is reset to a clean slate'
  end
end
