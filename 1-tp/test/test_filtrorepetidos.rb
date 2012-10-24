require 'test/unit'
require 'app/filtrorepetidos'

class TestFiltrarRepetidos < Test::Unit::TestCase
	def test_filtrar
		expected = "Sin caracteres repetidos"
		actual = FiltroRepetidos.new.filtrar("Siinn caraaaacttteeeres   repetidosss")
		assert_equal expected, actual
	end
end