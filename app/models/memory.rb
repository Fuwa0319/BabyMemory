class Memory < ApplicationRecord

  belongs_to :user
  has_many   :temperatures

  validates :worked_at, presence: true

end
