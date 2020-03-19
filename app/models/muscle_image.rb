class MuscleImage < ApplicationRecord
  belongs_to :muscle

  attachment :image
  validates :image_id, presence: true
end
