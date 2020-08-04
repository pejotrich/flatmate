class RequestsController < ApplicationController

  def new
    @request = Request.new
    authorize @request
  end

  def create
    @request = Request.new(request_params)
    @request.user_id = current_user.id
    @request.save
    redirect_to request_path(@request)
    render :template => "shared/friends"
    authorize @request
  end

  def show
    @request = Request.find(params[:id])
    authorize @request
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy

    redirect_to root_path
    authorize @request

  end

  def edit
    @request = Request.find(params[:id])
    authorize @request
    redirect_to request_path(@request)
  end

  def update
    @request = Request.find(params[:id])  

    @request.update(city: params[:request][:city], budget: params[:request][:budget], no_of_flat_mates: params[:request][:no_of_flat_mates], size: params[:request][:size], move_in_date_earliest: params[:request][:move_in_date_earliest], move_in_date_latest: params[:request][:move_in_date_latest], address: params[:request][:address], radius: params[:request][:radius], privacy_level: params[:request][:privacy_level])
    redirect_to request_path(@request)
    authorize @request

  end

  private

  def request_params
    params.require(:request).permit(:city, :budget, :user, :radius, :no_of_flat_mates, :size, :move_in_date_earliest, :move_in_date_latest, :address, :privacy_level)
  end
end
