class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @events = policy_scope(Event).search_by_title_and_task_and_description_and_category(params[:query])
    else
      @events = policy_scope(Event).order(created_at: :desc)
    end
     @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
  end

  end

  def show
    authorize @event
    @bookings = Booking.where(event:@event)
  end

  def new
    @organization = Organization.find(params[:organization_id])
    @user = current_user
    @event = Event.new
    @event.organization = @organization
    authorize @event
  end

  def create
    @event = Event.create(event_params)
    @user = current_user
    @organization = Organization.find(params[:organization_id])
    @event.organization = @organization
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
    params.require(:event).permit(:start_at, :ends_at, :address, :task, :title, :spots, :category, :description, :photo)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
