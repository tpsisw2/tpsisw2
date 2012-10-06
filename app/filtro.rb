class Filtro
	def filtrar(texto)
		[FiltroSimbolos,FiltroRepetidos].each do |fil|
			obj = fil.new
			texto = obj.filtrar(texto)
		end
		return texto
	end
end

# 		simbolos = FiltroSimbolos.new.filtrar(texto)
# 		repetidos = FiltroRepetidos.new.filtrar(simbolos)
# 		return repetidos
# 	end
# end