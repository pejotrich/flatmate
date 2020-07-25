class RequestsController < ApplicationController

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.save
    redirect_to request_path(@request)
  end


  private

  def request_params
    params.require(:request).permit(:city, :budget, :user, :radius, :no_of_flat_mates, :size, :move_in_date_earliest, :move_in_date_latest, :address, :privacy_level)
  end
end
