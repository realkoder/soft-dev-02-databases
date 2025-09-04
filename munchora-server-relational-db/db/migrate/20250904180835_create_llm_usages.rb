class CreateLlmUsages < ActiveRecord::Migration[8.0]
  def change
    create_table :llm_usages, id: :string, limit: 36 do |t|
      t.references :user, null: false, type: :string, limit: 36, foreign_key: true
      t.references :recipe, null: false, type: :string, limit: 36, foreign_key: true
      t.string :provider
      t.string :model
      t.text :prompt
      t.integer :prompt_tokens
      t.integer :completion_tokens

      t.timestamps
    end

    # Create trigger to generate UUID on insert
    execute <<~SQL
      CREATE TRIGGER before_llm_usages_insert
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
