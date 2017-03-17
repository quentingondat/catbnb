class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :update, :destroy]
  before_action :get_current_user, only: [:create, :update]

  def index
    session[:booking_start_at] = params[:start_at] if params[:start_at].present?
    session[:booking_end_at] = params[:end_at] if params[:end_at].present?
    session[:address] = params[:address] if params[:address].present?
    @cats = Cat.near(params[:address] || 'Paris')
    @cats = @cats.where("start_at <= ?", params[:start_at].to_date) if params[:start_at].present?
    @cats = @cats.where("end_at >= ?", params[:end_at].to_date) if params[:end_at].present?
    puts params[:start_at].to_date
    @hash = Gmaps4rails.build_markers(@cats) do |cat, marker|
      marker.lat cat.latitude
      marker.lng cat.longitude
      marker.infowindow render_to_string(partial: "/cats/map_box", locals: { cat: cat })
    end
  end

  def show
    @cat = Cat.find(params[:id])
    @booking = Booking.new
    @cat_coordinates = { lat: @cat.latitude, lng: @cat.longitude }
    # @reviews = @cat.reviews.all
    # if !current_user.nil?
    #   @current_user_past_booking = current_user.bookings.find{ |e| (e.cat == @cat) && (e.ends_at < DateTime.now)}
    #   @current_user_review_needed = @current_user_past_booking.reviews.find{ |e| e.user_id == current_user.id }.nil?
    #   @review = Review.new
    # end
  end

  def create
    @cat = Cat.new(user_params)
    @cat.user = @user
    @cat.save
    redirect_to cats_path
  end

  def new
    @cat = Cat.new
  end

  def edit

  end

  def update
    @cat.update(user_params)
    redirect_to cat_path(@cat)
  end

  def destroy
    @cat.destroy
    redirect_to cats_path
  end

  private

  def user_params
    params.require(:cat).permit(:name, :race, :age, :address, :price_per_day, :description, :cage, :litter, :cat_tree, :toys, :bowl, :outdoor, :belly_rubs, :start_at, :end_at, :photo)
  end

  def set_cat
    @cat = Cat.find(params[:id])
  end

  def get_current_user
    @user = current_user
  end
end
