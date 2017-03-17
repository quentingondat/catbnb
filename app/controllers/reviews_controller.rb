class ReviewsController < ApplicationController
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.user = current_user
    if @review.save
      if current_user == @booking.cat.user
        redirect_to user_path(@booking.user)
      else
        redirect_to cat_path(@booking.cat)
      end
    else
      if current_user == @booking.cat.user
        render user_path(@booking.user)
      else
        render cat_path(@booking.cat)
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
