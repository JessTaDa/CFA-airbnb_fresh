class PagesController < ApplicationController
  def home
  end

  def host_dashboard
    #get approved and not approved bookings
    #render template or that post
    @rooms = current_user.rooms #rooms that belong to the current user
  end

  def guest_dashboard
    @bookings = current_user.bookings
    @approved_bookings = @bookings.approved
    @pending_bookings = @bookings.pending

  end



end
