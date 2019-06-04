class UsersController < ApplicationController
# check if current user is owner (before action)
before_action :set_user, except: [:update]

  def show
    authorize @user
    @bookings = Booking.where(user: @user)
    @organization = Organization.where(user_id:current_user.id).first
    @completed_bookings = @bookings.where(status:"Completed")
    @confirmed_bookings = @bookings.where(status:"Confirmed")
    @pending_bookings = @bookings.where(status:"Pending")
    @cancelled_bookings = @bookings.where(status:"Cancelled")
    @rejected_bookings = @bookings.where(status:"Rejected")
    @card_color = { "Completed" => "bg-primary", "Confirmed" => "bg-success", "Pending" => "bg-warning", "Cancelled" => "bg-light", "Rejected" => "bg-danger",}
  end

  # edit and update don't need more code because of devise
  def edit
    authorize @user
  end

  def update
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
