require 'rails_helper'

RSpec.describe Unidade, type: :model do
  context 'Validates' do
    it "is expected to be valid" do
      unidade = create(:unidade)
      expect(unidade).to be_valid
    end
    it { is_expected.to validate_presence_of(:nome) }
    it { is_expected.to validate_presence_of(:endereco) }
    it { is_expected.to validate_presence_of(:numero) }
    it { is_expected.to validate_presence_of(:bairro) }
    it { is_expected.to validate_presence_of(:cidade) }
    it { is_expected.to validate_presence_of(:cep) }
    it { is_expected.not_to validate_presence_of(:data_desativacao) }
  end
end
