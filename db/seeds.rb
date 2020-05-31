require_relative( "../models/player.rb" )
require_relative( "../models/team.rb" )

require("pry-byebug")

Player.delete_all()
Team.delete_all()

player1 = Player.new({
    'first_name' => 'Sam',
    'second_name' => 'Cassie',
    'age' => 23,
    'position' => 'Midfield'
})

player1.save()

player2 = Player.new({
    'first_name' => 'Pete',
    'second_name' => 'Smith',
    'age' => 20,
    'position' => 'Striker'
})

player2.save()

player3 = Player.new({
    'first_name' => 'Joe',
    'second_name' => 'Arnold',
    'age' => 29,
    'position' => 'Goalkeeper'
})

player3.save()

player4 = Player.new({
    'first_name' => 'Alexander',
    'second_name' => 'Lee',
    'age' => 19,
    'position' => 'Defence'
})

player4.save()

player5 = Player.new({
    'first_name' => 'Thomas',
    'second_name' => 'Smith',
    'age' => 31,
    'position' => 'Defence'
})

player5.save()

player6 = Player.new({
    'first_name' => 'Josh',
    'second_name' => 'McArthur',
    'age' => 27,
    'position' => 'Midfield'
})

player6.save()


team1 = Team.new({
    'name' => 'Eastside FC'
})

team1.save()

team2 = Team.new({
    'name' => 'Giffnock FC'
})

team2.save()

team3 = Team.new({
    'name' => 'CodeClan United'
})

team3.save()

binding.pry
nil
