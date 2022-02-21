class MemoriesController < ApplicationController
  before_action :authenticate_user!, only: :index

  def index
    @memory = Memory.new
  end

  def create
      @memory = Memory.create(memory_params)
      @milk = Milk.create(milk_params)
      redirect_to root_path
  end

  private
  def memory_params
    params.permit(:comment, :worked_at).merge(user_id: current_user.id)
  end

  def milk_params
    params.permit(:milk_list_id, :memo).merge(user_id: current_user.id, memory_id: @memory.id)
  end

end
