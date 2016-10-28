class Ahorcado
  attr_reader :palabra
   @@PALABRAS = ['AEROPUERTO', 'RAVIOLES', 'MILANESA', 'ARROZ']

  def initialize
    @palabra = @@PALABRAS[Random.rand(@@PALABRAS.size-1)]
    @letra = ''
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
