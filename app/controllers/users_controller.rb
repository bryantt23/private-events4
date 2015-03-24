class UsersController < ApplicationController
  before_filter :authenticate_user!


  def show
    @user=current_user
    # @events = Event.(current_user).order("created_at DESC")

  # this line works to show all the user created events
  @created_events = @user.created_events



    @attended_events = @user.attended_events

		@upcoming_events = @user.attended_events.upcoming
		@prev_events     = @user.attended_events.past
  end



end
