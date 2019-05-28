class UsersController < ApplicationController
# check if current user is owner (before action)
  def show
    # depending on what should be shown? own profile?
    # @user = User.find(params[:id])
    # @user = current_user
  end

  def edit
  end

  def update
  end
end
