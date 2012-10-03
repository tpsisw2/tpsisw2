class Filtro
	def filtrar(texto)
		simbolos = FiltroSimbolos.new.filtrar(texto)
		repetidos = FiltroRepetidos.new.filtrar(simbolos)
		return repetidos
	end
end