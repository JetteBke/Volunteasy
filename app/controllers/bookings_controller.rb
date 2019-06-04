class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :approve, :reject, :destroy, :edit]

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def approve
    @booking.update(status:"Confirmed")
    @event = Event.find(params[:event_id])
    authorize @booking
    mail = UserMailer.with(user: @booking.user).confirmation
    mail.deliver_now
    redirect_to @event
  end

  def reject
    @booking.update(status:"Rejected")
    @event = Event.find(params[:event_id])
    redirect_to @event
    authorize @booking
  end

  def create
    @booking = Booking.create
    @booking.event = Event.find(params[:event_id])
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to current_user
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
    authorize @booking
    redirect_to current_user
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
