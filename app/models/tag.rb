class Tag < ActiveRecord::Base
  has_many :final_art_tags
  has_many :final_arts, through: :final_art_tags
end
