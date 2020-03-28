class Muscle < ApplicationRecord
  belongs_to :genre
  has_many :muscle_images, dependent: :destroy

  accepts_attachments_for :muscle_images, attachment: :images
  accepts_nested_attributes_for :muscle_images, allow_destroy: true

  validates :name, presence: true
  validates :origin, presence: true
  validates :insertion, presence: true
  validates :innervation, presence: true
  validates :action, presence: true
  validates :information, length: { maximum: 250 }
  validates :genre_id, presence: true

  def self.search(search)
    return Muscle.all unless search
    Muscle.where(['name LIKE ?', "%#{search}%"])
  end
end
