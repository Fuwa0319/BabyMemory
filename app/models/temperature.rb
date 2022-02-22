class Temperature < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :temperature_list
  belongs_to :user
  belongs_to :memory
  has_one_attached :temperature_image

  validates :memo, length: { maximum: 255 }
  validates :temperature_list_id,     numericality: { other_than: 1, message: "can't be blank" }

end
