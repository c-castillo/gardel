require 'sinatra'
require './lib/ahorcado.rb'




get '/' do
    @@ahorcado = Ahorcado.new
    erb :index
end

post '/' do
    erb :index
end
