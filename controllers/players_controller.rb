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


get '/players/:id/delete' do
    id = params[:id]
    @player = Player.find(id)
    erb(:"players/delete")
end

get '/players/:id/confirm-delete' do
    id = params[:id]
    @player = Player.find(id)
    @player.delete()
    erb(:"players/delete_confirmed")
end

get '/players/:id/edit' do
    id = params[:id]
    @player = Player.find(id)
    erb(:"players/edit")
end

post '/players/:id/edit-confirmed' do
    @player = Player.new(params)
    @player.update()
    erb(:"players/edit_confirmed")
end


post '/players' do
    @player = Player.new(params)
    @player.save()
    erb(:"players/created")
end
