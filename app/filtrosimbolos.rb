require 'app/etapa'

class FiltroSimbolos < Etapa
	
	#Filtrado de palabras con simbolos y/o numeros
	def do(seq, texto)
		reemplazos = {'0' => 'o', '1' => 'l','2'=>'dos', '3' => 'e', '4' => 'a', '5'=>'s', '6' => 'g', '7' => 't', '8'=>'b', '@' => 'a', '$' => 's', '!' => 'i', '|'=>'l'}		
		keys = reemplazos.keys.join()
		reg = Regexp.new('['+keys+']')
		textofiltrado = texto.dup.gsub(reg) {|match| reemplazos[match.to_s]}
		prox(seq, textofiltrado)
	end
end

