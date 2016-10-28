class Ahorcado
	attr_reader :palabra, :diccionario
	 @@PALABRAS = [
	'AEROPUERTO', 'RAVIOLES', 'MILANESA', 'ARROZ', 'CORDERO',
	'AUTOMOVIL','RODILLA', 'CABEZA', 'TRANVIA', 'PELOTA',
	'PARRILLA'
	]

	def initialize
		@diccionario = @@PALABRAS
		@palabra = @@PALABRAS[Random.rand(@@PALABRAS.size-1)]
	end

  def ingresar_letra(letra)
    @letra = letra
    validar_ingreso
  end


  def validar_ingreso
    if @letra.length == 1
      return true
    end
    return false
  end
end
