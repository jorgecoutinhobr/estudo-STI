FactoryBot.define do
  factory :carona do
    nome  { Faker::Name.name }
    partida { Faker::Australia.location }
    destino { Faker::Australia.location }
    dia { Date.today }
    hora { Time.current }
    passageiros { Faker::Number.between(from: 1, to: 4) }
    valor { Faker::Commerce.price }
    observacao { Faker::Lorem.sentence }

    trait :com_paradas do
      transient do
        paradas_count { 3 }
      end

      after(:create) do |carona, evaluator|
        create_list(:parada, evaluator.paradas_count, carona: carona)
      end
    end
  end
end