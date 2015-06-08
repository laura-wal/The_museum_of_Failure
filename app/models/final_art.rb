class FinalArt < ActiveRecord::Base
  has_many :final_art_tags
  has_many :tags, through: :final_art_tags
  validates :name, presence: true
  validates :comment, presence: true
end
