require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/player.rb' )
also_reload( '../models/*' )


get '/players' do
    @players = Player.all()
    erb(:"players/index")
end

get '/players/new' do
    erb(:"players/new")
end

post '/players' do
    @player = Player.new(params)
    @player.save()
    erb(:"players/created")
end

get '/players/:id/delete' do
    @player = Player.find(id)
    erb(:"delete")
end
