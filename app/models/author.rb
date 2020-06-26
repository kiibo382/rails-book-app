class Author < ApplicationRecord
  has_one_attached :image
  has_many :books, dependent: :destroy
  validates :name,  presence: true, length: { maximum: 50 }
  
  def avatar_image
    image.variant(resize_to_limit: [250, 250])
  end
end