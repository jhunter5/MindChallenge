FactoryBot.define do
  factory :log do
    happened_at { "2023-01-12 14:13:58" }
    description { "MyText" }
    role {0}
    logeable{'error'}
  end
end
