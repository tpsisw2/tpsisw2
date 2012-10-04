class Criterio
	def initialize(diccionario)
		@diccionario = diccionario
	end	
	def evaluar(texto)
		@diccionario.definiciones.map { |insulto|
			Regexp.new(insulto.upcase).match(texto.upcase)
		}.compact.length > 0
	end
end