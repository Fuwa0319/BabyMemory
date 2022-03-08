class SleepsController < ApplicationController

  def create
    @memory_sleep = MemorySleep.new(sleep_params)
    if @memory_sleep.valid?
      @memory_sleep.save
      redirect_to request.referer
    end
  end

  private
  def sleep_params
    params.require(:memory_sleep).permit(:memo, :worked_at, :sleep_image).merge(user_id: current_user.id)
  end

end
