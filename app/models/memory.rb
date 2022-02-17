class Memory < ApplicationRecord

  belongs_to :user

  validates :worked_at, presence: true

end
