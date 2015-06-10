class AddColumnToTags < ActiveRecord::Migration
  def change
    add_column :tags, :final_art_id, :integer
  end
end
