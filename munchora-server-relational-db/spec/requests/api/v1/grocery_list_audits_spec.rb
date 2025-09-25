require 'rails_helper'

RSpec.describe "Api::V1::GroceryListAudits", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/grocery_list_audits/index"
      expect(response).to have_http_status(:success)
    end
  end

end
