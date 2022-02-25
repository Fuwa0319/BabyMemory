class TemperaturesController < ApplicationController

  def create
    @memory_temperature = MemoryTemperature.new(temperature_params)
    if @memory_temperature.valid?
      @memory_temperature.save
      redirect_to request.referer
    end
end

private
def temperature_params
params.require(:memory_temperature).permit(:temperature_list_id, :memo, :worked_at).merge(user_id: current_user.id)
end

end
