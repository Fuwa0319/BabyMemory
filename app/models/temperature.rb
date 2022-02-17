class Temperature < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :temperature_list
  belongs_to :user
  belongs_to :memory

  validates :memo, length: { maxmum: 255 }
  validates :temperature_list_id,     numericality: { other_than: 1, message: "can't be blank" }

end
