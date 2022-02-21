class Poop < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :memory
  belongs_to :amount
  belongs_to :hardness
  has_one_attached :poop_image

  validates :memo, length: { maxmum: 255 }
  validates :amount_id,       numericality: { other_than: 1, message: "can't be blank" }
  validates :hardness_id,     numericality: { other_than: 1, message: "can't be blank" }
end
