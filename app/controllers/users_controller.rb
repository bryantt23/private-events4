class UsersController < ApplicationController
  before_filter :authenticate_user!


  def show
    @user=current_user
    # @events = Event.(current_user).order("created_at DESC")

  @created_events = @user.created_events
    @attended_events = @user.attended_events
  end


end
