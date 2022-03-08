class GetUp < ApplicationRecord
  belongs_to :user
  belongs_to :memory
  has_one_attached :get_up_image
end
