FactoryBot.define do
  factory :unidade do
    nome { Faker::Company.name }
    endereco { Faker::Address.street_name }
    numero { Faker::Address.building_number }
    bairro { Faker::Address.community }
    cidade { Faker::Address.city }
    cep { Faker::Address.zip_code }
  end
end
