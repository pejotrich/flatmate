class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    offer = Offer.find(params[:offer_id])
    stream_for offer
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
