class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
  end

  def edit

  end

  def update
    current_user.update(user_params)
    redirect_to user_path(current_user)
  end

  def destroy
    current_user.destroy
    redirect_to root_path
  end

  def dashboard
    #@my_offers = current_user.offers
    #bookings
    #bookings
  end

  private

  def user_params
    params.require(:user).permit(:name, :description, :photo, :email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
