require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        
        erb :'./views/index'
    end

    get '/teams' do
        @teams = Team.all
        
        erb :'views/team'
    end

    post '/teams' do
        binding.pry
        @team = Team.new(params[:team])


        erb :'views/team'
    end

    
end
