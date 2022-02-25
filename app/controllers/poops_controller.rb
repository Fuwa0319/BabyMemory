class PoopsController < ApplicationController

  def create
    @memory_poop = MemoryPoop.new(poop_params)
    if @memory_poop.valid?
      @memory_poop.save
      redirect_to request.referer
    end
  end

  private
  def poop_params
    params.require(:memory_poop).permit(:amount_id, :hardness_id, :memo, :worked_at).merge(user_id: current_user.id)
  end

end
