class Memory < ApplicationRecord

  belongs_to :user
  has_many   :temperatures
  has_many   :milks
  has_many   :pees

  validates :worked_at, presence: true

end
