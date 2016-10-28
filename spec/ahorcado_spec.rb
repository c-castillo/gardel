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

    it 'validar reemplazo de palabra cuando letra ocurre' do
      a = Ahorcado.new("MILANESA")
      a.ingresar_letra("M")
      expect(a.palabra_actual).to eq "M-------"
    end

    it 'validar reemplazo de palabra cuando letra NO ocurre' do
      a = Ahorcado.new("MILANESA")
      a.ingresar_letra("J")
      expect(a.palabra_actual).to eq "--------"
    end

    it 'validar reemplazo de palabra cuando letra ocurre varias veces' do
      a = Ahorcado.new("MILANESA")
      a.ingresar_letra("M")
      expect(a.palabra_actual).to eq "M-------"
      a.ingresar_letra("A")
      expect(a.palabra_actual).to eq "M--A---A"
    end

    it 'al iniciar el juego el puntaje es 0' do
      a = Ahorcado.new
      expect(a.puntaje).to eq 0
    end

    it 'cuando la letra ingresada no ocurre, el puntaje es 1' do
      a = Ahorcado.new("MILANESA")
      a.ingresar_letra("T")
      expect(a.puntaje).to eq 1
    end

    it 'cuando la letra ingresada ocurre, el puntaje es 0' do
      a = Ahorcado.new("MILANESA")
      a.ingresar_letra("M")
      expect(a.puntaje).to eq 0
    end

end
