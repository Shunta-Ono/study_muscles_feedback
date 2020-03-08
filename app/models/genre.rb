class Genre < ApplicationRecord
  has_many :muscles, dependent: :destroy
end
