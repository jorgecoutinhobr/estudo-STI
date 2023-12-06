require 'rails_helper'

RSpec.describe Parada, type: :model do
  context 'Associations' do
    it { is_expected.to belong_to(:carona)}
    
    it 'has_many' do
      carona = create(:carona, :com_paradas)
      expect(carona.paradas.count).to eq(3)
    end
  end

  context 'Number of paradas' do
    it '3' do
      paradas = create_list(:parada, 3)
      expect(paradas.count).to eq(3)
    end
  end
end
