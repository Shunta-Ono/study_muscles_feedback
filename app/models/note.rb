class Note < ApplicationRecord
  has_many :note_images, dependent: :destroy
  has_many :likes
  belongs_to :user

  validates :title, presence: true, length: { maximum: 20 }
  validates :name, presence: true, length: { maximum: 20 }
  validates :origin, presence: true, length: { maximum: 20 }
  validates :insertion, presence: true, length: { maximum: 20 }
  validates :innervation, presence: true, length: { maximum: 30 }
  validates :action, presence: true, length: { maximum: 30 }
  validates :body, length: { maximum: 250 }

  def self.search(search)
    return Note.all unless search
    Note.where(['name LIKE ?', "%#{search}%"])
  end

  def liked_by?(user)
    likes.exists?(user_id: user.id)
  end

end
