class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :update, :destroy]
  def index
    @cats = Cat.all
  end

  def show
  end

  def create
    @cat = Cat.new(user_params)
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
    params.require(:cat).permit(:name, :race, :age, :address, :price_per_day, :description, :cage, :litter, :cat_tree, :toys, :bowl, :outdoor, :belly_rubs)
  end

  def set_cat
    @cat = Cat.find(params[:id])
  end
end