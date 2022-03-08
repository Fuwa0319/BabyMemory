class MemoryGetUp
  include ActiveModel::Model
  attr_accessor :memo , :worked_at, :get_up__image, :user_id
  
  with_options presence: true do
    validates :worked_at
    validates :user_id
  end
  
  validates :memo, length: { maximum: 255 }

  def save
    memory = Memory.create(worked_at: worked_at, user_id: user_id)
    GetUp.create(memo: memo, get_up_image: get_up_image,  user_id: user_id, memory_id: memory.id)
  end

end