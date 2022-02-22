class MemoryTemperature
  include ActiveModel::Model
  attr_accessor :temperature_list_id , :worked_at, :memo, :user_id
  
  with_options presence: true do
    validates :worked_at
    validates :user_id
  end
  
  validates :memo, length: { maximum: 255 }
  validates :temperature_list_id,     numericality: { other_than: 1, message: "can't be blank" }

  def save
    memory = Memory.create(worked_at: worked_at, user_id: user_id)
    Temperature.create(temperature_list_id: temperature_list_id, memo: memo, user_id: user_id, memory_id: memory.id)
  end

end