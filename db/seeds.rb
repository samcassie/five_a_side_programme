require_relative( "../models/player.rb" )
require_relative( "../models/team.rb" )

require("pry-byebug")

Player.delete_all()
Team.delete_all()

player1 = Player.new({
    'first_name' => 'Sam',
    'second_name' => 'Cassie',
    'age' => 23,
    'position' => 'CM'
})

player1.save()



team1 = Team.new({
    'name' => 'Eastside FC'
})

team1.save()

binding.pry
nil
