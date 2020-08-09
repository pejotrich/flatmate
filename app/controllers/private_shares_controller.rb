class PrivateSharesController < ApplicationController
  before_action :set_request

  def new
    @private_share = PrivateShare.new
    authorize @private_share
  end

  def create
    authorize @request
    @users = User.where(id: params[:private_share][:user_id])
    @users.each do |user|
      private_share = PrivateShare.new(request: @request, user: user, privacy_level: params[:private_share][:privacy_level], sharer_id: current_user.id)
      private_share.save
      if @request.user != current_user
        mark_as_shared
      end
    end
      redirect_to request_path(@request)
    
  end


  private

  def mark_as_shared
    first_private_share = PrivateShare.where(request: @request, user: current_user).first
    first_private_share.shared = true
    first_private_share.save
  end

  def set_request
    @request = Request.find(params[:request_id])
  end

  def private_share_params
    params.require(:private_share).permit(:user_id, :request_id, :privacy_level, :sharer_id)
  end
end
