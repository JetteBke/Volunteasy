class UsersController < ApplicationController
# check if current user is owner (before action)
before_action :set_user, except: [:update]

  def show
    authorize @user
  end

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
