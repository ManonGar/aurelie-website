class Drawing < ApplicationRecord
  belongs_to :theme

  has_one_attached :photo
end
