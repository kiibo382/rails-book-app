class Author < ApplicationRecord
  has_one_attached :image
  def display_image
    image.variant(resize_to_limit: [350, 350])
  end
end
