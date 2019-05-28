class UsersController < ApplicationController
# check if current user is owner (before action)
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def edit
    authorize @user
  end

  def update
  end
end
