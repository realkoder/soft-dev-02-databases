class Users::Neo4jUserSearchService
  def initialize(params)
    @params = params || {}
    @page = (@params[:page] || 1).to_i
    @per_page = (@params[:per_page] || 10).to_i
  end

  def call
    users = Graph::User.all

    if @params[:search].present?
      q = @params[:search].downcase
      users = users.where("toLower(first_name) CONTAINS $q OR toLower(last_name) CONTAINS $q OR toLower(email) CONTAINS $q", q: q)
    end

    total_count = users.count
    total_pages = (total_count / @per_page.to_f).ceil

    paginated_users = users.skip((@page - 1) * @per_page).limit(@per_page)

    {
      total_count: total_count,
      total_pages: total_pages,
      current_page: @page,
      per_page: @per_page,
      users: paginated_users
    }
  end
end
