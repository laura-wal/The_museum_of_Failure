class CreateFinalArtTags < ActiveRecord::Migration
  def change
    create_table :final_art_tags do |t|
      t.string :final_art_id
      t.string :tag_id

      t.timestamps null: false
    end
  end
end
