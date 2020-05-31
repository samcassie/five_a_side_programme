require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/players_controller.rb')
require_relative('controllers/teams_controller.rb')

get '/' do
    @players = Player.all()
    @teams = Team.all()
    erb( :index )
end
