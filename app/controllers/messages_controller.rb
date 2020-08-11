class MessagesController < ApplicationController
  def create
    @offer = Offer.find(params[:offer_id])
    @message = Message.new()
    @message.offer = @offer
    @message.sender = current_user
    if @message.save
      redirect_to offer_path(@offer, anchor: "message-#{@message.id}")
    else
      render "offers/show"
    end
  end
end
