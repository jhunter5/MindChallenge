FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 10, max_length: 20) }
    # role {Faker::Number.between(from: 0, to: 2)}
  end
end
