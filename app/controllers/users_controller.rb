class UsersController < ApplicationController
# check if current user is owner (before action)
before_action :set_user, except: [:update]

  def show
    authorize @user
    @bookings = Booking.where(user: @user)

    # @confirmed_bookings = @bookings.select { |booking| booking.status == "Confirmed" }
    # @rejected_bookings = @bookings.select { |booking| booking.status == "Rejected" }
    # @pending_bookings = @bookings.select { |booking| booking.status == "Pending" }
    # @cancelled_bookings = @bookings.select { |booking| booking.status == "Cancelled" }
    # @completed_bookings = @bookings.select { |booking| booking.status == "Completed" }

    # @card_color = {"Confirmed" => "bg-success", "Pending" => "bg-warning", "Rejected" => "bg-danger", "Completed" => "bg-info", "Cancelled" => "bg-light"}

    @organization = Organization.where(user_id:current_user.id).first
    @completed_bookings = @bookings.where(status:"Completed")
    @confirmed_bookings = @bookings.where(status:"Confirmed")
    @pending_bookings = @bookings.where(status:"Pending")
    @cancelled_bookings = @bookings.where(status:"Cancelled")
    @rejected_bookings = @bookings.where(status:"Rejected")
    @card_color = {"Confirmed" => "bg-success", "Pending" => "bg-warning", "Rejected" => "bg-danger", "Completed" => "bg-info", "Cancelled" => "text-dark bg-light"}
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
