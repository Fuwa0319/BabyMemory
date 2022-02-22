class MemoriesController < ApplicationController
  before_action :authenticate_user!, only: :index

  def index
    @memory_milk = MemoryMilk.new
  end

  def create
    @memory_milk = MemoryMilk.new(milk_params)
    if @memory_milk.valid?
      @memory_milk.save
      redirect_to root_path
    end
  end

  private
  def milk_params
    params.require(:memory_milk).permit(:milk_list_id, :memo, :worked_at).merge(user_id: current_user.id)
  end

end
