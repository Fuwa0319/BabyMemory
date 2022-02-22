class Pee < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :memory
  belongs_to :amount
  has_one_attached :pee_image

  validates :memo, length: { maximum: 255 }
  validates :amount_id,     numericality: { other_than: 1, message: "can't be blank" }

end
