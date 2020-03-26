class Note < ApplicationRecord
  has_many :note_images, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :user

  validates :title, presence: true, length: { maximum: 20 }
  validates :name, presence: true
  validates :body, presence: true

  scope :with_user, -> { includes(:user) }
  scope :with_likes, -> { includes(:likes) }

  def self.search(search)
    return Note.all unless search
    Note.where(['name LIKE ?', "%#{search}%"])
  end

  def liked_by?(user)
    likes.exists?(user_id: user.id)
  end

end
