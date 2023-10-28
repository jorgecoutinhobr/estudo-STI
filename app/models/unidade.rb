class Unidade < ApplicationRecord
  validates :nome, :endereco, :numero, :bairro, :cidade, :cep, presence: true
end
