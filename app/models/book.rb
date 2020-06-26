class Book < ApplicationRecord
  has_one_attached :image
  belongs_to :author
  default_scope -> { order(releasedate: :desc) }
  validates :author_id, presence: true
  validates :content, presence: true, length: { maximum: 1000 }
  
  def display_image
    image.variant(resize_to_limit: [210, 297])
  end
end
