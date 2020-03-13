class Note < ApplicationRecord
  has_many :note_images, dependent: :destroy
  belongs_to :user
end
