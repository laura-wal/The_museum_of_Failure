class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.boolean :life
      t.boolean :love
      t.boolean :epic
      t.boolean :work
      t.boolean :funny
      t.integer :final_art_id

      t.timestamps null: false
    end
  end
end
