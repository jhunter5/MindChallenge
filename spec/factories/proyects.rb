FactoryBot.define do
  factory :proyect do
    proyect_name { Faker::Internet.name}
    client_name { Faker::Internet.name}
    user_id {1}
  end
end
