class Relational::GroceryListShare < ApplicationRecord
  self.table_name = 'grocery_list_shares'
  belongs_to :grocery_list
  belongs_to :user

  validates :user_id, uniqueness: { scope: :grocery_list_id }
end
