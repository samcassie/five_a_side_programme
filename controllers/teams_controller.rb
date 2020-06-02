require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/team.rb' )
require_relative( '../models/player.rb' )
also_reload( '../models/*' )

get '/teams' do
    @teams = Team.all()
    @players = Player.all()
    erb(:"teams/index")
end

get '/teams/new' do
    erb(:"teams/new")
end

post '/teams' do
    @team = Team.new(params)
    @team.save()
    erb(:"teams/created")
end

get '/teams/:id/delete' do
    id = params[:id]
    @team = Team.find(id)
    erb(:"teams/delete")
end

get '/teams/:id/delete-confirmed' do
    id = params[:id]
    @team = Team.find(id)
    @team.delete()
    erb(:"teams/delete_confirmed")
end

get '/teams/:id/add-player' do
    id = params[:id]
    @team = Team.find(id)
    @players = Player.all()
    erb(:"teams/add_player")
end

post '/teams/:id/add-player' do
    team_id = params[:id]
    @team = Team.find(team_id)

    player_id = params[:player]
    @player = Player.find(player_id)

    @player.join_team(@team.id)
    erb(:"teams/player_added")
end

get '/teams/:id/remove-player' do
    id = params[:id]
    @team = Team.find(id)
    @players = @team.players
    erb(:"teams/remove_player")
end

post '/teams/:id/remove-player' do
    team_id = params[:id]
    @team = Team.find(team_id)

    player_id = params[:player]
    @player = Player.find(player_id)

    @player.leave_team()
    erb(:"teams/player_added")
end
