class Memory < ApplicationRecord

  belongs_to :user
  has_many   :temperatures
  has_many   :milks
  has_many   :pees
  has_many   :poops

end
