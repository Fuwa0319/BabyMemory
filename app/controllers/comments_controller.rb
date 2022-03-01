class CommentsController < ApplicationController

  def create
    @memory_comment = MemoryComment.new(comment_params)
    if @memory_comment.valid?
      @memory_comment.save
      redirect_to request.referer
    end
  end

  private
  def comment_params
    params.require(:memory_comment).permit(:comment, :worked_at, :comment_image).merge(user_id: current_user.id)
  end

end
