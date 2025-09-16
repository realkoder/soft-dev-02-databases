class CreateGroceryLists < ActiveRecord::Migration[8.0]
  def change

    create_table :grocery_lists, id: false do |t|
      t.string :id, limit: 36, null: false, primary_key: true
      t.string :name
      t.references :owner, null: false, foreign_key: { to_table: :users }, type: :string, limit: 36

      t.timestamps
    end
  end
end
