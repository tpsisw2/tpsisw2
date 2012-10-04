require 'diccionario'
require 'criterio'
require 'analizador'
require 'filtrosimbolos'
require 'filtrorepetidos'
require 'filtro'
require 'texto'
require 'input_reader'

inputReader = InputReader.new
filename = inputReader.get_filename
file = File.new(filename, 'r')
textos = file.readlines

textos.each do |texto|
	#texto = "Este texto contiene p3e333eee3lo7ud0s y debería devolver true"
	textoFiltrado = Filtro.new.filtrar(texto)
	diccionario = Diccionario.new
	puts Criterio.new(diccionario).evaluar(textoFiltrado)
end