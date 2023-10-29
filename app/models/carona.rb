class Carona < ApplicationRecord
  has_many :paradas, dependent: :destroy, inverse_of: :carona
  accepts_nested_attributes_for :paradas, allow_destroy: true, reject_if: :all_blank
  validates :nome, :dia, :partida, :destino, :hora, :passageiros, :valor ,presence: true
end
