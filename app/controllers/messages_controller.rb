class MessagesController < ApplicationController
  def create
    @offer = Offer.find(params[:offer_id])
    @message = Message.new(message_params)
    @message.offer = @offer
    @message.sender = current_user
    authorize @message
    if @message.save
      ChatroomChannel.broadcast_to(
      @offer,
      render_to_string(partial: "message", locals: { message: @message })
      )
      redirect_to offer_show1_path(@offer, anchor: "message-#{@message.id}")
    else
      render "offers/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
