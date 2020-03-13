class Muscle < ApplicationRecord
  belongs_to :genre
  has_many :muscle_images, dependent: :destroy

  accepts_attachments_for :muscle_images, attachment: :image
  accepts_nested_attributes_for :muscle_images

  validates :name, presence: true
  validates :innervation, presence: true
  validates :action, presence: true
  validates :genre_id, presence: true
end
