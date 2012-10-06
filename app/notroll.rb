require 'app/prohibidos'
require 'app/filtrosimbolos'
require 'app/filtrorepetidos'
require 'app/excepciones'
require 'app/input_reader'
require "rubygems"
require "sinatra"
require "erb"

module Comentario

  get '/' do
    answer = ""
    erb :index, :locals => {:answer => answer}
  end
  
  get '/validar' do
    erb :index, :locals => {:answer => ""} 
  end

  post '/validar' do

	seq = [FiltroSimbolos,FiltroRepetidos,Excepciones,Prohibidos]
	#texto = "Este texto contiene p3e333eee3lo7ud0s y debería devolver true"
	texto = "#{params[:texto]}"
	res = seq.shift.new.do(seq, texto.dup)
	if res
		answer = " Este texto tiene palabras invalidas"
	else
		answer =  " Texto correcto!"	
	end
	erb :index, :locals => {:answer => answer} 

  end
end
