require './app/etapa.rb'

class Prohibidos < Etapa
	def definiciones
		return ['cagón','idiota','imbecil','jode','maricón','pelotudo', 'boludo', 'tarado','puta', 'marica','nabo','mierda','puto','pelotuda','boluda', 'pajero','pajera', 'tarada','chupa un huevo','garca','trolo']
	end

	def do(seq, texto)
		definiciones.map { |insulto|
			Regexp.new(insulto.upcase).match(texto.upcase)
		}.compact.length > 0
	end
end
