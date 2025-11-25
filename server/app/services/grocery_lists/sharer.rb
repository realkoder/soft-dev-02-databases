module GroceryLists
  class Sharer
    def self.share(list, user_ids)
      # Get current shared user IDs - FIXED
      current_shared_ids = list.shared_users.map(&:id)

      # Find users to add (excluding already shared ones)
      users_to_add = User.where(id: user_ids - current_shared_ids).to_a

      # Add relationships to each user
      users_to_add.each do |user|
        list.shared_users << user
      end

      users_to_add
    end

    def self.unshare(list, user_id)
      user = User.find(user_id)
      list.shared_users.delete(user)
    end
  end
end
