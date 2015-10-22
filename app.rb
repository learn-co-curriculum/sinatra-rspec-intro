require './config/environment'

class TestApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/' do
  end

  get '/about' do
    erb :about
  end

  get '/search/?:q?' do
    @search = params[:q]
    erb :results
  end

  get '/hello/:name' do
    @name = params[:name]
    erb :hello
  end

end
