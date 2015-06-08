class CreateFinalArtTags < ActiveRecord::Migration
  def change
    create_table :final_art_tags do |t|
      t.integer :final_art_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
