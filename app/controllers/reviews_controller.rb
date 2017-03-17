class ReviewsController < ApplicationController
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.user = current_user
    if @review.save
      redirect_to cat_path(@booking.cat)
    else
      render cat_path @booking.cat
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
