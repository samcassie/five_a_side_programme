require_relative('../db/sql_runner.rb')

class Player

    attr_reader :id
    attr_accessor :first_name, :second_name, :age, :position, :team_id

    def initialize(options)
        @id = options['id'] if options['id']
        @first_name = options['first_name']
        @second_name = options['second_name']
        @age = options['age'].to_i()
        @position = options['position']
        @team_id = options['team_id'].to_i()
    end

    def save()
        sql = "INSERT INTO players
        (
         first_name,
         second_name,
         age,
         position
        )
        VALUES
        (
          $1, $2, $3, $4
        )
        RETURNING id, team_id"
        values = [@first_name, @second_name, @age, @position]
        results = SqlRunner.run(sql, values)
        @id = results.first()['id'].to_i
        @team_id = nil
    end

    def join_team(team_id)
        @team_id = team_id
        sql = "UPDATE players
        SET (
        first_name,
        second_name,
        age,
        position,
        team_id
       )
       =
       (
         $1, $2, $3, $4, $5
       )
       WHERE id = $6"
       values = [@first_name, @second_name, @age, @position, @team_id, @id]
       SqlRunner.run(sql, values)
    end

    def team()
        sql = "SELECT * FROM teams WHERE teams.id = $1"
        values = [@team_id]
        result = SqlRunner.run(sql, values).first()
    end

    def self.delete_all()
        sql = "DELETE FROM players"
        SqlRunner.run( sql )
    end

    def self.all()
      sql = "SELECT * FROM players"
      results = SqlRunner.run( sql )
      return results.map { |player| Player.new( player ) }
    end



end
