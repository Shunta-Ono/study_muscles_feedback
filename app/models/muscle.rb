class Muscle < ApplicationRecord
  belongs_to :genre
  has_many :images
end
