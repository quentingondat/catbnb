class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    @reviews = @user.reviews.all
    if !current_user.nil?
      @user_past_booking = @user.bookings.find{ |e| (e.cat.user == current_user) && (e.ends_at < DateTime.now)}
      if @user_past_booking.nil?
        @user_review_needed = false
      else
        @user_review_needed = @user_past_booking.reviews.find{ |e| e.user_id == current_user.id }.nil?
      end
      @review = Review.new
    end
  end

  def edit
  end

  def update
    #comment
    current_user.update(user_params)
    redirect_to user_path(current_user)
  end

  def destroy
    current_user.destroy
    redirect_to root_path
  end

  def dashboard
    @cat = Booking.order(:updated_at).last.cat
  end

  private

  def user_params
    params.require(:user).permit(:name, :description, :photo, :email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
