class OffersController < ApplicationController
  def new
    @request = Request.find(params[:request_id])
    @offer = Offer.new
    authorize @offer
  end

  def create
    @request = Request.find(params[:request_id])
    @offer = Offer.new(offer_params)
    authorize @offer
    if current_user.in? @request.private_shares.map{|ps| ps.user}
      @offer.request = @request
      @offer.creator_id = current_user.id
      @user = User.find(@offer.creator_id)
      if @offer.save
        if @user.friends_with?(@request.user)
          redirect_to request_path(@request)
        else
          current_user.friend_request(@request.user)
          redirect_to request_path(@request)
        end
        @offer.status = 'send'
      else
        render :new
      end
    else
      @offer.request = @request
      @offer.creator_id = current_user.id
      if @offer.save
        current_user.friend_request(@request.user)
        redirect_to request_path(@request)
      else
        render :new
      end
    end
  end

  def accept
    @request = Request.find(params[:request_id])
    @offer = Offer.find(params[:offer_id])
    @offer.status = "accepted"
    @offer.save
    @user = User.find(@offer.creator_id)
    if @user.friend_request(@request.user)
      @request.user.accept_request(@user)
      redirect_to root_path
    else
      redirect_to root_path
    end
    authorize @offer
  end

  def decline
    @request = Request.find(params[:request_id])
    @offer = Offer.find(params[:offer_id])
    @offer.status = "declined"
    @offer.save
    @user = User.find(@offer.creator_id)
    if @user.friend_request(@request.user)
      @request.user.decline_request(@user)
      redirect_to root_path
    else
      redirect_to root_path
    end
    authorize @offer
  end

  def show
    @request = Request.find(params[:request_id])
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
    params.require(:offer).permit(:status, :first_message, :request_id, :creator_id)
  end
end
