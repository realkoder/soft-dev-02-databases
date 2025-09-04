FactoryBot.define do
  factory :recipe do
    user { nil }
    title { "MyString" }
    description { "MyString" }
    image_url { "MyString" }
    instructions { "MyString" }
    is_public { false }
    cuisine { "MyString" }
    difficulty { "MyString" }
    tags { "MyString" }
    prep_time { 1 }
    cook_time { 1 }
    servings { 1 }
  end
end
