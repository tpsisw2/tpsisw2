class Criterio
	def initialize(diccionario)
		@diccionario = diccionario
	end	
	def evaluar(texto)
		@diccionario.definiciones.map { |insulto|
			Regexp.new(insulto).match(texto)
		}.compact.length > 0
	end
end