class Unidade < ApplicationRecord
  validates :nome, presence: true
  validates :endereco, presence: true
  validates :numero, presence: true
  validates :bairro, presence: true
  validates :cidade, presence: true
  validates :cep, presence: true
end
