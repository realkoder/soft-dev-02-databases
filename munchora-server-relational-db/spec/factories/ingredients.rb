FactoryBot.define do
  factory :ingredient do
    name { "Chicken" }
    category { "meat 🍗" }
    amount { 1 }
    association :recipe
  end
end
