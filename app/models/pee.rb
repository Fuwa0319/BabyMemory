class Pee < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :memory
  belongs_to :amount
  has_one_attached :pee_image

end
