require 'etapa'

class Prohibidos < Etapa
	def definiciones
		return ['pelotudo', 'boludo', 'tarado','puta', 'etc...']
	end

	def do(seq, texto)
		definiciones.map { |insulto|
			Regexp.new(insulto.upcase).match(texto.upcase)
		}.compact.length > 0
	end
end