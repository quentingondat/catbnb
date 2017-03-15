class BookingsController < ApplicationController
  def show
  end

  def new
    #@booking = Booking.new(start_at: params[:start_at], ends_at: params[:ends_at],
      #cat_id: params[:cat_id])
     @booking = Booking.new(start_at: DateTime.now, ends_at: DateTime.now + 3.days,
      cat_id: params[:cat_id], price_per_day: params[:price_per_day])
  end


  def create
    #@cat = Cat.find(params[:cat_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    #@booking.cat = @cat
    if @booking.save
      redirect_to congrats_path
    else
      render :new
    end
  end

  def destroy
  end

  def congrats
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :ends_at, :cat_id, :price_per_day)
  end
end
