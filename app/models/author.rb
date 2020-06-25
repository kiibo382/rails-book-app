class Author < ApplicationRecord
  has_one_attached :image
  has_many :books, dependent: :destroy
  validates :name,  presence: true, length: { maximum: 50 }
  def display_image
    image.variant(resize_to_limit: [350, 350])
  end
end