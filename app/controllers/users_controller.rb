class UsersController < ApplicationController
before_action :set_user, except: [:update]

  def show
    authorize @user
    @booking =
    @review = Review.new
    @bookings = Booking.where(user: @user)
    @organization = Organization.where(user_id:current_user.id).first
    @completed_bookings = @bookings.where(status:"Completed")
    @confirmed_bookings = @bookings.where(status:"Confirmed")
    @pending_bookings = @bookings.where(status:"Pending")
    @cancelled_bookings = @bookings.where(status:"Cancelled")
    @rejected_bookings = @bookings.where(status:"Rejected")
    @card_color = {"Confirmed" => "bg-success", "Pending" => "bg-warning", "Rejected" => "bg-danger", "Completed" => "bg-info", "Cancelled" => "text-dark bg-light"}
  end

  def edit
    authorize @user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
