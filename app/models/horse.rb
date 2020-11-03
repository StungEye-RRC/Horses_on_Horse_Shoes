class Horse < ApplicationRecord
  belongs_to :breed

  has_one_attached :image
end
