require './config/environment'

class TestApp < Sinatra::Base
  get '/' do
  end

  post '/' do
  end

  get '/about' do
    erb :about
  end

  get '/hello/?:name?' do
    @name = params[:name]
    erb :hello
  end

    get '/hello/:name' do
      @name = params[:name]
      erb :hello
  end

end
