class Memory < ApplicationRecord

  belongs_to :user
  has_many   :temperatures
  has_many   :milks

  validates :worked_at, presence: true

end
