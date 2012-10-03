require 'diccionario'
require 'criterio'
require 'analizador'
require 'filtrosimbolos'
require 'filtrorepetidos'
require 'filtro'
require 'texto'


texto = "Este texto contiene p3lo7ud0s y debería devolver true"
textoFiltrado = Filtro.new.filtrar(texto)
diccionario = Diccionario.new
puts Criterio.new(diccionario).evaluar(textoFiltrado)