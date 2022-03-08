class GetUpsController < ApplicationController

  def create
    @memory_get_up = MemoryGetUp.new(get_up_params)
    if @memory_get_up.valid?
      @memory_get_up.save
      redirect_to request.referer
    end
  end

  private
  def get_up_params
    params.require(:memory_get_up).permit(:memo, :worked_at, :get_up_image).merge(user_id: current_user.id)
  end

end
