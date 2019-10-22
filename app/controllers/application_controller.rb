require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    # get '/' do
        
    #     erb :'./views/index'
    # end

    get '/' do
        # @teams = Team.all
        
        erb :'super_hero'
    end

    post '/team' do
        # binding.pry
        @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
        # members = params
        # @super_heros = (name: params[:team][:member][][:name], power: params[:team][:motto])
        
        erb :'team'
    end

    
end
