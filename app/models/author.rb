class Author < ApplicationRecord
  has_one_attached :image
  has_many :books, dependent: :destroy
  has_many :follows, dependent: :destroy
  validates :name,  presence: true, length: { maximum: 50 }

  def follow_user(user_id)
    follows.find_by(user_id: user_id)
  end
  
  def avatar_image
    image.variant(resize_to_limit: [200, 200])
  end

  def self.search(search)   
    if search  
      where(['name LIKE ?', "%#{search}%"])   
    else  
      all  
    end  
  end  
end