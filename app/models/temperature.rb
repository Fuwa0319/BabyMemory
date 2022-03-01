class Temperature < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :temperature_list
  belongs_to :user
  belongs_to :memory
  has_one_attached :temperature_image

end
