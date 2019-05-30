class UsersController < ApplicationController
# check if current user is owner (before action)
before_action :set_user, except: [:update]

  def show
    authorize @user
    @bookings = Booking.where(user:current_user)
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
