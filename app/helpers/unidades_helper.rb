module UnidadesHelper
  def data_formatada(data) 
    Date.parse(data).strftime("%d/%m/%Y") if data.present?
  end
  
	def cep_formatado(cep)
	  cep.split('').insert(5, '-').join
	end
end
