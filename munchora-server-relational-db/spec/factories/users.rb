FactoryBot.define do
  factory :user do
    id { SecureRandom.uuid }
    fullname { "Test User" }
    sequence(:email) { |n| "user#{n}@example.com" }
    password { "securepass" }
    image_src { "https://example.com/avatar.png" }
    provider { "email" }
    uid { SecureRandom.uuid }
  end
end