require_relative( "../models/player.rb" )
require_relative( "../models/team.rb" )

require("pry-byebug")

Player.delete_all()
Team.delete_all()

player1 = Player.new({
    'first_name' => 'Sam',
    'second_name' => 'Cassie',
    'age' => 23,
    'position' => 'Midfielder'
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
    'position' => 'Defender'
})

player5.save()

player6 = Player.new({
    'first_name' => 'Josh',
    'second_name' => 'McArthur',
    'age' => 27,
    'position' => 'Midfielder'
})

player6.save()

player7 = Player.new({
    'first_name' => 'John',
    'second_name' => 'Jones',
    'age' => 41,
    'position' => 'Striker'
})

player7.save()

player8 = Player.new({
    'first_name' => 'Michael',
    'second_name' => 'Johnson',
    'age' => 21,
    'position' => 'Goalkeeper'
})

player8.save()

player9 = Player.new({
    'first_name' => 'James',
    'second_name' => 'Brown',
    'age' => 26,
    'position' => 'Defender'
})

player9.save()

player10 = Player.new({
    'first_name' => 'David',
    'second_name' => 'Williams',
    'age' => 24,
    'position' => 'Midfielder'
})

player10.save()

player11 = Player.new({
    'first_name' => 'James',
    'second_name' => 'Garcia',
    'age' => 31,
    'position' => 'Midfielder'
})

player11.save()

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

player2.join_team(2)
player3.join_team(1)
player7.join_team(2)
player8.join_team(2)

binding.pry
nil
