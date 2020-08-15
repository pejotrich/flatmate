class MessagesController < ApplicationController
  def create
    puts params
    @offer = Offer.find(params[:offer_id])
    @offer.status = params[:status]
    @offer.save
    @request = @offer.request
    @message = Message.new(message_params)
    @message.offer = @offer
    @message.sender = current_user
    authorize @message
    if @message.save
      if @offer.status == "declined"
        puts "THIS IS WORKING"
        request_offer_decline_path(@request, @offer)
        redirect_to request_offer_path(@request, @offer)
      elsif @offer.status == "accepted"
        request_offer_accept_path(@request, @offer)
        redirect_to request_offer_path(@request, @offer)
      end
      ChatroomChannel.broadcast_to(
      @offer,
      render_to_string(partial: "message", locals: { message: @message })
      )
    else
      render "offers/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
