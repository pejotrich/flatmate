class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @my_requests = Request.where(user_id: current_user.id)
    @my_offers = []
    @my_requests.each do |request|
      @my_offers  << request.offers
    end

  end
end
