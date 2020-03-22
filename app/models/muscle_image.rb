class MuscleImage < ApplicationRecord
  belongs_to :muscle

  attachment :image
  validates :image, presence: true
end
