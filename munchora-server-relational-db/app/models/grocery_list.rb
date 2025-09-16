class GroceryList < ApplicationRecord
  self.primary_key = "id"

  before_create -> { self.id ||= SecureRandom.uuid }

  belongs_to :owner, class_name: "User"

  has_many :items, class_name: "GroceryListItem", dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
end
