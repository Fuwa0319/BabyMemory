class Memory < ApplicationRecord

  belongs_to :user
  has_one    :temperature
  has_one    :milk
  has_one    :pee
  has_one    :poop
  has_one    :comment
  has_one    :sleep
  has_one    :get_up

  validates :worked_at, presence: true

end
