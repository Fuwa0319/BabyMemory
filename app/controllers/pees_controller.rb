class PeesController < ApplicationController

  def create
    @memory_pee = MemoryPee.new(pee_params)
    if @memory_pee.valid?
      @memory_pee.save
      redirect_to root_path
    end
  end

  private
  def pee_params
    params.require(:memory_pee).permit(:amount_id, :memo, :worked_at).merge(user_id: current_user.id)
  end

end
