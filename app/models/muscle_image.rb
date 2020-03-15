class MuscleImage < ApplicationRecord
  belongs_to :muscle

  attachment :image
end
