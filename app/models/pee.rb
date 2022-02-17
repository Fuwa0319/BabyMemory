class Pee < ApplicationRecord
  belongs_to :user
  belongs_to :memory
  belongs_to :amount

  validates :memo, length: { maxmum: 255 }
  validates :amount_id,     numericality: { other_than: 1, message: "can't be blank" }

end
