class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy, :edit]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    # booking should be nested into the events and then...
    @booking.event = Event.find(params[:id])
    @booking.user = current_user
    if @booking.save
      redirect_to events_index_path
    else
      render :new
    end
  end

  # do we need update and edit here?
  def update
  end

  def edit
  end

  def destroy
    @booking.delete
    # authorize @booking
    # redirect_to current_user
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
