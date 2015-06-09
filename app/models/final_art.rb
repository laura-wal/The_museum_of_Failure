class FinalArt < ActiveRecord::Base
  BASE_URI = "https://www.rijksmuseum.nl/api/nl/collection?key=TEIxCRZw&format=json&imgonly=True"

  has_many :final_art_tags
  has_many :tags, through: :final_art_tags
  validates :name, presence: true
  validates :comment, presence: true

  before_create :set_image

  private
    def set_image
      self.img_url = grab_random_image
    end

    def grab_random_image
      build_image_array.sample
    end

    def build_image_array
      HTTParty.get(BASE_URI)["artObjects"].map do |obj| 
        obj["webImage"]["url"]
      end
    end
end
