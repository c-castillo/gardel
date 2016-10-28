require './lib/ahorcado'

  describe 'Juego Ahorcado' do

	  it "genera palabra" do
		  juego = Ahorcado.new
		  expect(juego.diccionario.include?(juego.palabra)).to be true 
  	end

    it 'validar el ingreso de una sola letra' do
      a = Ahorcado.new
      a.ingresar_letra('A')
      expect(a.validar_ingreso).to eq true
    end

end
