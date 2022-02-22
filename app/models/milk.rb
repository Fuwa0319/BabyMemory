class Milk < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :milk_list
  belongs_to :user
  belongs_to :memory
  has_one_attached :milk_image

end
