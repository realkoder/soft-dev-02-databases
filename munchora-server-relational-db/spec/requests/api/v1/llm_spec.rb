require 'rails_helper'

RSpec.describe Api::V1::LlmController, type: :request do
  # acting with authenticated test-user
  let!(:auth_user) { User.create!(first_name: 'Jane', last_name: 'Smith', email: 'jane@example.com', password: 'secure123') }
  let(:headers) do
    token = Auth::JsonWebToken.encode(user_id: auth_user.id)
    { 'Authorization' => "Bearer #{token}", 'Content-Type' => 'application/json' }
  end

  # ======================================
  # POST: GENERATE_RECIPE
  # ======================================
  context '#generate_recipe' do
  end

  # ======================================
  # PUT: UPDATE_RECIPE
  # ======================================
  context '#update_recipe' do
  end
end
