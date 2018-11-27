class GardensController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_garden, only: [:show, :edit, :update, :destroy]

  def new
    @garden = Garden.new
  end

  def index
    @gardens = Garden.all
  end

  def my_gardens
    @gardens = current_user.gardens
  end

  def show
    @garden = Garden.find(params[:id])
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.user = current_user
    if @garden.save!
      redirect_to garden_path(@garden)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @garden.update(garden_params)
    redirect_to garden_path(@garden)
  end

  def delete
    @garden.destroy
    redirect_to my_garden_path
  end

  private

  def set_garden
    @garden = Garden.find(params[:id])
  end

  def garden_params
    params.require(:garden).permit(:name, :address, :description, :price, :swimming_pool, :barbecue, :max_guests)
  end
end
