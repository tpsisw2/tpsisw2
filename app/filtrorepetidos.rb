require 'app/etapa.rb'

class FiltroRepetidos < Etapa
	#Filtrado de palabras con letras repetidas
	def do(seq, texto)
		textofiltrado = texto.squeeze
		prox(seq, textofiltrado)
	end
end

