class Ahorcado

	attr_reader :palabra, :palabra_reemplazada, :diccionario
	 @@PALABRAS = [
	'AEROPUERTO', 'RAVIOLES', 'MILANESA', 'ARROZ', 'CORDERO',
	'AUTOMOVIL','RODILLA', 'CABEZA', 'TRANVIA', 'PELOTA',
	'PARRILLA'
	]

	def initialize(palabra_hardcode=nil)
		@diccionario = @@PALABRAS
		@palabra = palabra_hardcode || @@PALABRAS[Random.rand(@@PALABRAS.size-1)]
		@palabra_reemplazada = ("-"*@palabra.size).split('')
		@letra = ''
	end

  def ingresar_letra(letra)
    @letra = letra
    validar_ingreso
		reemplazar(letra)
	end

  def validar_ingreso
    if @letra.length == 1 and @letra =~ /[A-Za-z]/m
      return true
    end
    return false
  end
	
	def reemplazar(l)
		@palabra.split('').each_with_index do |c,p|
			if (c==l)
				@palabra_reemplazada[p] = l
			end
		end
	end
	
	def palabra_actual
		@palabra_reemplazada.join
	end

end
