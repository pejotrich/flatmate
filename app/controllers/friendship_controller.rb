class FriendshipController < ApplicationController
  def create
    @user.friend_request(User.find_by(id: params[:id]))
  end
end
