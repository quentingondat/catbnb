class BookingsController < ApplicationController
  def show
  end

  def new
    #@booking = Booking.new(params[:start_at], params[:ends_at], params[:id],
      #params[:cat_id], params[:user_id], params[:price_per_day])
  end


  def create
    @cat = Cat.find(params[:cat_id])
    @booking = Booking.new(booking_params)
    @booking.cat = @cat
    @booking.user = current_user
    if booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :ends_at)
  end
end
