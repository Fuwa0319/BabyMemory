class MemoryPoop
  include ActiveModel::Model
  attr_accessor :amount_id, :hardness_id, :worked_at, :poop_image, :memo, :user_id
  
  with_options presence: true do
    validates :worked_at
    validates :user_id
  end
  
  validates :memo, length: { maximum: 255 }
  validates :amount_id,       numericality: { other_than: 1, message: "can't be blank" }
  validates :hardness_id,     numericality: { other_than: 1, message: "can't be blank" }

  def save
    memory = Memory.create(worked_at: worked_at, user_id: user_id)
    Poop.create(amount_id: amount_id, hardness_id: hardness_id, memo: memo, poop_image: poop_image, user_id: user_id, memory_id: memory.id)
  end

end