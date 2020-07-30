class OffersController < ApplicationController
  def new
    # If Request has been shared with user do block
    # else do nothing
    @request = Request.find(params[:request_id])
    @offer = Offer.new
    authorize @offer
  end

  def create
    # if Request has been shared with user do block
    # else do nothing
    # request.private_shares
    @request = Request.find(params[:request_id])
    if current_user.in? @request.private_shares.map{|ps| ps.user}
      @offer = Offer.new(offer_params)
      #@offer.user_id = current_user.id
      @offer.save
      redirect_to request_path(@request)
      authorize @offer
    end
  end

  def show
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to root_path
    authorize @offer
  end

  def edit
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def update
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  private

  def offer_params
    params.require(:offer).permit(:status, :first_message)
  end
end
