class PrivateSharesController < ApplicationController
  before_action: :set_request

  def new
    @private_share = PrivateShare.new
  end

  def create
    @private_share = PrivateShare.new(private_share_params)
    @private_share.request = @request
    @private_share.save
  end

  private

  def set_request
    @request = Request.find(params[:request_id])
  end

  def private_share_params
    params.require(:private_share).permit(:user, :request_id)
  end
end
