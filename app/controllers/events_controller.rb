class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = policy_scope(Event).order(created_at: :desc)
  end

  def show
    authorize @event
  end

  def new
    @user = current_user
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.create(event_params)
    @user = current_user
    @event.organization = Organization.find(params[:organization_id])
    authorize @event
    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def edit
    @organization = Organization.find(params[:organization_id])
    @user = current_user
  end

  def update
    @event.update(event_params)
  end

  def destroy
    @event.delete
    authorize @event
    redirect_to organization_path(@event.organization)
  end

  private

  def event_params
    params.require(:event).permit(:starts_at, :ends_at, :address, :task, :title, :spots, :category, :description, :photo)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
