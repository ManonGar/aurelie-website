class Theme < ApplicationRecord
  has_many :drawings

  has_one_attached :photo
end
