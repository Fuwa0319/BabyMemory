class Poop < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :memory
  belongs_to :amount
  belongs_to :hardness
  has_one_attached :poop_image

end
