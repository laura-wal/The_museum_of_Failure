class Tag < ActiveRecord::Base
  belongs_to :final_art
  has_many :final_art_tags
  has_many :final_arts, through: :final_art_tags
end
