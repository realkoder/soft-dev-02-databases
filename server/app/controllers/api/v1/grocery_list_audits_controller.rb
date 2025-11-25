class Api::V1::GroceryListAuditsController < ApplicationController
  before_action :authorize_admin!

  def index
    @grocery_list_audits = Relational::GroceryListAudit.all
    render json: @grocery_list_audits
  end
end
