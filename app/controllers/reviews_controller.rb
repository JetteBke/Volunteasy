class ReviewsController < ApplicationController
before_action :find_booking

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.create(review_params)
    authorize @review
    if @review.save
      redirect_to organization_path(@organization)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

  def find_booking
    @booking = Booking.find(params[:booking_id])
  end
end
