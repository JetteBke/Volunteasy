class UsersController < ApplicationController
# check if current user is owner (before action)
before_action :set_user, except: [:update]

  def show
    authorize @user
    @bookings = Booking.where(user: @user)

    @confirmed_bookings = @bookings.select { |booking| booking.status == "Confirmed" }
    @rejected_bookings = @bookings.select { |booking| booking.status == "Rejected" }
    @pending_bookings = @bookings.select { |booking| booking.status == "Pending" }
    @cancelled_bookings = @bookings.select { |booking| booking.status == "Cancelled" }
    @completed_bookings = @bookings.select { |booking| booking.status == "Completed" }

    @card_color = {"Confirmed" => "bg-success", "Pending" => "bg-warning", "Rejected" => "bg-danger", "Completed" => "bg-primary", "Cancelled" => "bg-light"}

    @organization = Organization.where(user_id:current_user.id).first
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
