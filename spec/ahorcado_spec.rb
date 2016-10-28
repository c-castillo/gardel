require './lib/ahorcado'

  describe 'Juego Ahorcado' do

	  it "genera palabra" do
		  juego = Ahorcado.new
		  expect(juego.diccionario.include?(juego.palabra)).to be true 
  	end

    it 'validar el ingreso de una solo caracter' do
      a = Ahorcado.new
      a.ingresar_letra('A')
      expect(a.validar_ingreso).to eq true
    end

    it 'validar que el ingreso sea una letra valida' do
      a = Ahorcado.new
      a.ingresar_letra('b')
      expect(a.validar_ingreso).to eq true
    end

end
