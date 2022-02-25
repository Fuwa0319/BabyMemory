class Memory < ApplicationRecord

  belongs_to :user
  has_one    :temperature
  has_one    :milk
  has_one    :pee
  has_one    :poop

end
