class MemoryComment
  include ActiveModel::Model
  attr_accessor :comment , :worked_at, :comment_image, :user_id
  
  with_options presence: true do
    validates :worked_at
    validates :comment, length: { maximum: 4294967296 }, if: :was_attached?
    validates :user_id
  end

  def save
    memory = Memory.create(worked_at: worked_at, user_id: user_id)
    Comment.create(comment: comment, comment_image: comment_image, user_id: user_id, memory_id: memory.id)
  end

  def was_attached?
    self.comment_image.nil?
  end

end