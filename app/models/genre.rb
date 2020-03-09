class Genre < ApplicationRecord
  has_many :muscles, dependent: :destroy
  attachment :image
end
