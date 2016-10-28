require 'sinatra'
require './lib/ahorcado.rb'

get '/' do
    @@ahorcado = Ahorcado.new
    erb :index
end

post '/' do
    letra = params[:letra]
    @estado = @@ahorcado.ingresar_letra(letra.to_s.upcase)
    erb :index
end
