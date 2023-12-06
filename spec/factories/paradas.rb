FactoryBot.define do
  factory :parada do
    sequence(:endereco) { |n| "Rua #{n} de Março" }
    carona
  end
end
