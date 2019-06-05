class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = policy_scope(Event).order(created_at: :desc)

    if params[:query].present?
      @events = @events.search_by_title_and_task_and_description_and_category(params[:query])
    end

    if params[:date].present?
      start_date, end_date = params[:date].split(' - ')

      @events = @events.date_between(start_date, end_date)
    end

    if params[:category].present?
      @events = @events.search_by_title_and_task_and_description_and_category(params[:category])
    end

    @markers = @events.map do |event|
      if event.category == "Animal"
        category_image = helpers.asset_url('paw-solid.svg')
      elsif event.category == "Environment"
        category_image = helpers.asset_url('leaf-solid.svg')
      elsif event.category == "Community"
        category_image = helpers.asset_url('hands-helping-solid.svg')
      end
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { event: event }),
        image_url: category_image
      }
    end
  end

  def show
    authorize @event
    @bookings = Booking.where(event:@event)
    @organization = @event.organization
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
    @organization = @event.organization
    @user = current_user
    authorize @event
  end

  def update
    authorize @event
    if @event.update(event_params)
      redirect_to @event
    else
      render :edit
    end
  end

  def destroy
    @event.delete
    authorize @event
    @organization = Organization.find(params[:organization_id])
    redirect_to @organization
  end

  private

  def event_params
    params.require(:event).permit(:start_at, :ends_at, :address, :task, :title, :spots, :category, :description, :photo)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
