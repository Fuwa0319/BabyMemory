class MemoriesController < ApplicationController
  before_action :authenticate_user!, only: :index

  def index
    if params[:'top-date-select'].present?
      select_date = params[:'top-date-select']
      @memories = Memory.includes(:user).where(worked_at: select_date.in_time_zone.all_day).order("worked_at ASC")
      @check_day = select_date
      #binding.pry
    else
      @check_day = Date.today.strftime("%Y-%m-%d")
      select_date = @check_day
      @memories = Memory.includes(:user).where(worked_at: select_date.in_time_zone.all_day).order("worked_at ASC")
      #binding.pry
    end
  end

end
