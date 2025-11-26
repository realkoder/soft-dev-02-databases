class GroceryLists::Sharer
  def self.share(list, user_ids, use_db)
    if use_db == "mongodb"
      mongodb_share(list, user_ids)
    elsif use_db == "neo4j"
      neo4j_share(list, user_ids)
    else
      users_to_add = Relational::User.where(id: user_ids).where.not(id: list.shared_user_ids)
      list.shared_users << users_to_add
    end
  end

  def self.unshare(list, user_id, use_db)
    if use_db == "mongodb"
      mongodb_unshare(list, user_id)
    elsif use_db == "neo4j"
      user = Graph::User.find(user_id)
      list.shared_users.delete(user)
    else
      list.shared_users.delete(user_id)
    end
  end

  private

  def self.mongodb_share(list, user_ids)
    users_to_add = Document::User.where(:id.in => user_ids).not_in(id: list.shared_user_ids)

    users_to_add.each do |user|
      # Add user to list.shared_users unless already present
      unless list.shared_users.include?(user)
        list.shared_users << user
      end

      # Add list to user.shared_grocery_lists unless already present
      unless user.shared_grocery_lists.include?(list)
        user.shared_grocery_lists << list
      end
    end

    list.save!
    users_to_add.each(&:save!)
  end

  def self.neo4j_share(list, user_ids)
    current_shared_ids = list.shared_users.map(&:id)

    users_to_add = Graph::User.where(id: user_ids - current_shared_ids).to_a

    users_to_add.each do |user|
      list.shared_users << user
    end
    users_to_add
  end

  def self.mongodb_unshare(list, user_id)
    user = Document::User.find(user_id)

    # Remove from list side
    list.shared_users.delete(user)

    # Remove from user side
    user&.shared_grocery_lists&.delete(list)

    list.save!
    user.save!
  end
end
