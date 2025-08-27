class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :fullname
      t.string :email
      t.string :provider
      t.string :uid
      t.string :password_digest
      t.string :image_src
      t.string :bio
      t.datetime :last_signed_in_at

      t.timestamps
    end
  end
end
