FactoryBot.define do
  factory :recipe_like, class: 'Relational::RecipeLike' do
    user { nil }
    recipe { nil }
  end
end
