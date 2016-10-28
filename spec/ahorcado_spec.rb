require './lib/ahorcado'

describe 'Juego Ahorcado' do
	it "genera palabra" do
		juego = Ahorcado.new
		expect(juego.palabra.to_s.size).to be > 1 
	end
end
