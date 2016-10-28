class Ahorcado
	attr_reader :palabra
	 @@PALABRAS = ['AEROPUERTO', 'RAVIOLES', 'MILANESA', 'ARROZ']

	def initialize
		@palabra = @@PALABRAS[Random.rand(@@PALABRAS.size-1)]
	end

end
