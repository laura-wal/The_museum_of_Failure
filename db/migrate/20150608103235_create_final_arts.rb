class CreateFinalArts < ActiveRecord::Migration
  def change
    create_table :final_arts do |t|
      t.string :name
      t.text :comment
      t.string :img_url

      t.timestamps null: false
    end
  end
end
