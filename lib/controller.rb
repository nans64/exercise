require 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    gossip_author = params[:gossip_author]
    gossip_content = params[:gossip_content]
    Gossip.new.save(gossip_author, gossip_content)
    redirect '/'
  end

  get '/gossips/all/' do
    erb :all, locals: {gossips: Gossip.all}
  end

  run! if app_file == $0
end