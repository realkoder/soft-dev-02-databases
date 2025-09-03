class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users, id: :string, limit: 36 do |t|
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

    # Create trigger to generate UUID on insert
    execute <<~SQL
      CREATE TRIGGER before_users_insert
      BEFORE INSERT ON users
      FOR EACH ROW
      BEGIN
        IF NEW.id IS NULL OR NEW.id = '' THEN
          SET NEW.id = UUID();
        END IF;
      END;
    SQL
  end
end
