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
    @team = 
