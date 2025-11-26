FactoryBot.define do
  factory :llm_usage, class: 'Relational::LlmUsage' do
    user { nil }
    recipe { nil }
    provider { "MyString" }
    model { "MyString" }
    prompt { "MyText" }
    prompt_tokens { 1 }
    completion_tokens { 1 }
  end
end
