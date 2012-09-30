require 'test/unit'
require 'app/filtrosimbolos'

class TestFiltrarSimbolos < Test::Unit::TestCase
    def test_filtrar
		expected = "Microsoft"
		actual = FiltroSimbolos.new.filtrar("M1cr0$0f7")
     	assert_equal expected, actual
    	
    	expected = "bUeNos aiRes aRgeNtiNa"
    	actual = FiltroSimbolos.new.filtrar("8U3N05 41R35 4R63N71N4")
    	assert_equal expected, actual
    end
end