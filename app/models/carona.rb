class Carona < ApplicationRecord
  has_many :paradas, dependent: :destroy, inverse_of: :carona
  accepts_nested_attributes_for :paradas, allow_destroy: true, reject_if: :all_blank
  validates :nome, presence: true
  validates :partida, presence: true
  validates :dia, presence: true
  validates :destino, presence: true
  validates :hora, presence: true
  validates :passageiros, presence: true
  validates :valor, presence: true
  validates_format_of :valor, with: /\A\d+(.\d{1,2})?\z/, message: "Valor até duas casas decimais"
  validate :npassageiros
  
  private

  def npassageiros
    unless (1..4).include?(passageiros)
      errors.add(:passageiros, "dem ser de no mínimo 1 e no máximo 4")
    end
  end

end
