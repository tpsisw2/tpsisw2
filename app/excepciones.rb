require './app/etapa.rb'

class Excepciones < Etapa
	def definiciones
		return ['computadora']
	end

	def do(seq, texto)
		definiciones.map { |excepcion|
			texto = texto.upcase.gsub(excepcion.upcase, '')
		}
		prox(seq, texto)
	end
end
