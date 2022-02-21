class Milk < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :milk_list
  belongs_to :user
  belongs_to :memory

  validates :memo, length: { maximum: 255 }
  validates :milk_list_id,     numericality: { other_than: 1, message: "can't be blank" }

end
