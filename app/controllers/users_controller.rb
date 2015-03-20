class UsersController < ApplicationController
  before_filter :authenticate_user!


  def show
    @user=current_user
    # @events = Event.(current_user).order("created_at DESC")

  @events = @user.events
  end


end
