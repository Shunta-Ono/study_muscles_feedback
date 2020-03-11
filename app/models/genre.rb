class Genre < ApplicationRecord
  has_many :muscles, dependent: :destroy
  attachment :image

  validates :name, presence: true
  validates :image, presence: true
end
