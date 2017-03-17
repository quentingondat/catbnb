class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
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
