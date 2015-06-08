class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.boolean :life, default: false
      t.boolean :love, default: false
      t.boolean :epic, default: false
      t.boolean :work, default: false
      t.boolean :funny, default: false
      t.integer :final_art_id

      t.timestamps null: false
    end
  end
end
