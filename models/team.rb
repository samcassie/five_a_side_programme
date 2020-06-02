require_relative('../db/sql_runner.rb')

class Team

    attr_reader :id
    attr_accessor :name

    def initialize(options)
        @id = options['id'] if options['id']
        @name = options['name']
    end

    def save()
        sql = "INSERT INTO teams
        (
         name
        )
        VALUES
        (
          $1
        )
        RETURNING id"
        values = [@name]
        results = SqlRunner.run(sql, values)
        @id = results.first()['id'].to_i
    end

    def delete()
        sql = "DELETE FROM teams
        WHERE id = $1"
        values = [@id]
        SqlRunner.run( sql, values )
    end

    def players()
        sql = "SELECT * FROM players WHERE team_id = $1"
        values = [@id]
        result = SqlRunner.run(sql, values)
        return result.map { |player| Player.new( player ) }
    end

    def self.delete_all()
        sql = "DELETE FROM teams"
        SqlRunner.run( sql )
    end

    def self.find(id)
      sql = "SELECT * FROM teams WHERE id = $1"
      values = [id]
      team = SqlRunner.run( sql, values )
      result = Team.new(team.first)
      return result
    end

    def self.all()
      sql = "SELECT * FROM teams"
      results = SqlRunner.run( sql )
      return results.map { |team| Team.new( team ) }
    end

end
