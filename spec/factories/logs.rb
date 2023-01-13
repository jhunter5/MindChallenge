FactoryBot.define do
  factory :log do
    user { nil }
    proyects { nil }
    happened_at { "2023-01-12 14:13:58" }
    description { "MyText" }
  end
end
