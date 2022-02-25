class MilksController < ApplicationController

  def create
        @memory_milk = MemoryMilk.new(milk_params)
        if @memory_milk.valid?
          @memory_milk.save
          redirect_to request.referer
        end
  end

  private
  def milk_params
    params.require(:memory_milk).permit(:milk_list_id, :memo, :worked_at).merge(user_id: current_user.id)
  end

end
