class Book < ApplicationRecord
  has_one_attached :image
  belongs_to :author
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  default_scope -> { order(releasedate: :desc) }
  validates :author_id, presence: true
  validates :content, presence: true, length: { maximum: 1000 }
  validates :releasedate, presence: true
  
  def display_image
    image.variant(resize_to_limit: [210, 297])
  end
end