class Genre < ApplicationRecord
  has_many :muscles,foreign_key: :genre_id, dependent: :destroy
  attachment :image

  validates :name, presence: true
  validates :image, presence: true
end
