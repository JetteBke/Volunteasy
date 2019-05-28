class ReviewsController < ApplicationController
before_action

  def index
    @reviews = policy_scope(Review).order(created_at: :desc)
  end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.create(review_params)
    if @review.save
      redirect_to events_index_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
