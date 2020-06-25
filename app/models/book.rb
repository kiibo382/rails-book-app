class Book < ApplicationRecord
  has_one_attached :image
  belongs_to :author
  default_scope -> { order(created_at: :desc) }
  validates :author_id, presence: true
  validates :content, presence: true, length: { maximum: 1000 }
end
