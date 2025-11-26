FactoryBot.define do
  factory :recipe_comment, class: 'Relational::RecipeComment' do
    user { nil }
    recipe { nil }
    comment { "MyText" }
  end
end
