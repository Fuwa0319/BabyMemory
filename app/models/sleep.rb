class Sleep < ApplicationRecord
  belongs_to :user
  belongs_to :memory
  has_one_attached :sleep_image
end
