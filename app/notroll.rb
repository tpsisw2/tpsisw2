require 'prohibidos'
require 'filtrosimbolos'
require 'filtrorepetidos'
require 'excepciones'
require 'input_reader'

inputReader = InputReader.new
filename = inputReader.get_filename
file = File.new(filename, 'r')
textos = file.readlines

textos.each do |texto|
	seq = [FiltroSimbolos,FiltroRepetidos,Excepciones,Prohibidos]
	#texto = "Este texto contiene p3e333eee3lo7ud0s y debería devolver true"
	res = seq.shift.new.do(seq, texto.dup)
	if res
		print texto + " Este texto tiene palabras inválidas\n"
	else
		print texto + " Texto correcto!\n"	
	end

end