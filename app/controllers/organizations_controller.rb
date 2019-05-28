class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update, :destroy]

  def index
    @organizations = policy_scope(Organization).order(created_at: :desc)
  end

  def show
    @user = @organization.user
    authorize @organization
    authorize @user
  end

  def new
    @organization = Organization.new
    authorize @organization
  end

  def create
    @organization = Organization.create(organization_params)
    @organization.user = current_user
    authorize @organization
    if @organization.save
      redirect_to @organization
    else
      render :new
    end
  end

  def edit
    authorize @organization
  end

  def update
    @organization.update(organization_params)
  end

  def destroy
    @organization.delete
    authorize @organization
    redirect_to current_user
  end

  private

  def organization_params
    params.require(:booking).permit(:name, :address, :category, :url, :description, :photo_url)
  end

  def set_organization
    @organization = Organization.find(params[:id])
  end
end
