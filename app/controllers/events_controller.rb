class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    # set the organization correctly
    @event.organization = current_user.organization

    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def edit
  end

  def update
    @event.update(event_params)
  end

  def destroy
    @event.delete
    # authorize @event
    # redirect_to organization_path(@event.organization)
  end

  private

  def event_params
    params.require(:event).permit(:starts_at, :ends_at, :address, :task, :title, :spots, :category, :description, :photo)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
