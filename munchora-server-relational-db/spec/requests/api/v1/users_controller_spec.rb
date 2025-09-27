require 'rails_helper'

RSpec.describe User, type: :request do
  # Create multiple users using the factory
  let!(:users) { create_list(:user, 3) }
  let!(:user2) { User.create!(id: "99", first_name: 'Jane', last_name: 'Smith', email: 'jane@example.com', password: 'secure123') }

  # Create a logged-in user for authentication
  let!(:auth_user) { create(:user) }

  let(:headers) do
    token = Auth::JsonWebToken.encode(user_id: auth_user.id)
    { 'Authorization' => "Bearer #{token}", 'Content-Type' => 'application/json' }
  end

  context 'positive tests' do
    context '#index' do
      context 'without search query' do
        it 'returns all users paginated' do
          get '/api/v1/users', headers: headers

          expect(response).to have_http_status(:ok)
          json = JSON.parse(response.body)
          expect(json['data'].size).to eq(5) # 4 created + 1 auth_user
          expect(json['pagination']).to include('current_page', 'total_pages', 'total_count')
        end

        it 'returns users in correct json #fullname and without pasword_digest' do
          get '/api/v1/users', headers: headers

          json = JSON.parse(response.body)
          # Verify that each user has a fullname attribute combining first_name and last_name
          json['data'].each do |user_json|

            expect(user_json).to include('fullname')
            expect(user_json['fullname']).to eq("#{user_json['first_name']} #{user_json['last_name']}")
          end

          # Optional: verify password_digest is excluded
          json['data'].each do |user_json|
            expect(user_json).not_to include('password_digest')
          end

        end
      end

      context 'with search query' do
        it 'returns only users matching first_name + last_name' do
          get '/api/v1/users', params: { search: 'Jane Smith' }, headers: headers
          expect(response).to have_http_status(:ok)
          json = JSON.parse(response.body)
          expect(json['data'].size).to eq(1)
          expect(json['data'].first['fullname']).to eq('Jane Smith')
        end

        it 'returns users searched by email' do
          get '/api/v1/users', params: { search: 'jane@example.com' }, headers: headers
          expect(response).to have_http_status(:ok)
          json = JSON.parse(response.body)
          expect(json['data'].size).to eq(1)
          expect(json['data'].first['fullname']).to eq('Jane Smith')
        end

        it 'returns no users if nothing matches' do
          get '/api/v1/users', params: { search: 'NOTHING' }, headers: headers
          expect(response).to have_http_status(:ok)
          json = JSON.parse(response.body)
          expect(json['data']).to be_empty
        end
      end

      context 'pagination' do
        it 'respects per_page and page params' do
          get '/api/v1/users', params: { per_page: 2, page: 1 }, headers: headers
          expect(response).to have_http_status(:ok)
          json = JSON.parse(response.body)
          expect(json['data'].size).to eq(2)
        end
      end
    end
  end

  # pending 'negative tests' do
  #
  # end
end
