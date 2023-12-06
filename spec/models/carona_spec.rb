require 'rails_helper'

RSpec.describe Carona, type: :model do
  context 'Validations' do
    it { is_expected.to validate_presence_of(:nome) }
    it { is_expected.to validate_presence_of(:partida) }
    it { is_expected.to validate_presence_of(:destino) }
    it { is_expected.to validate_presence_of(:dia) }
    it { is_expected.to validate_presence_of(:hora) }
    it { is_expected.to validate_presence_of(:passageiros) }
    it "is expected to validate that :passageiros cannot be bigger than 4" do
      carona = build(:carona, passageiros: [5,6,7].sample)
      expect(carona).not_to be_valid
    end
    it "is expected to validate that :passageiros cannot be smaller than 4" do
      carona = build(:carona, passageiros: [0,-1,-2].sample)
      expect(carona).not_to be_valid
    end
    it { is_expected.to validate_presence_of(:valor) }
    it { is_expected.to_not validate_presence_of(:observacao) }
    end
end

