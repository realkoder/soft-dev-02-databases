module GroceryLists
  class Sharer
    def self.share(list, user_ids)
      users_to_add = User.where(:id.in => user_ids).not_in(id: list.shared_user_ids)

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

    def self.unshare(list, user_id)
      user = User.find(user_id)

      # Remove from list side
      list.shared_users.delete(user)

      # Remove from user side
      user.shared_grocery_lists.delete(list)

      list.save!
      user.save!
    end
  end
end
