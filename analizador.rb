class Analizador
	def initialize(texto, filtros, criterio)
		@texto = texto
		@filtros = filtros
		@criterio = criterio
	end

	def analizar
		@filtros.each {|filtro|
			criterio.decidir(filtro.filtrar(@texto))
		}
	end
end