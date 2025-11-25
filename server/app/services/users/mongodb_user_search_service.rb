class Users::MongodbUserSearchService
  def initialize(params)
    @params = params || {}
    @page = (@params[:page] || 1).to_i
    @per_page = (@params[:per_page] || 10).to_i
  end

  def call
    users = Document::User.all

    if @params[:search].present?
      query = /#{Regexp.escape(@params[:search].downcase)}/i
      users = users.where(
        "$or" => [
          { :"first_name" => query },
          { :"last_name" => query },
          { :"email" => query }
        ]
      )
    end

    paginated_users = users.page(@page).per(@per_page)

    {
      total_count: paginated_users.total_count,
      total_pages: paginated_users.total_pages,
      current_page: @page,
      per_page: @per_page,
      users: paginated_users
    }
  end
end
