class MemorySleep
  include ActiveModel::Model
  attr_accessor :memo , :worked_at, :sleep_image, :user_id
  
  with_options presence: true do
    validates :worked_at
    validates :user_id
  end
  
  validates :memo, length: { maximum: 255 }

  def save
    memory = Memory.create(worked_at: worked_at, user_id: user_id)
    Sleep.create(memo: memo, sleep_image: sleep_image,  user_id: user_id, memory_id: memory.id)
  end

end